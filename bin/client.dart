// Copyright (c) 2018, the gRPC project authors. Please see the AUTHORS file
// for details. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Dart implementation of the gRPC helloworld.Greeter client.
import 'dart:async';
import 'package:dartGRPC/wakanda/message.dart';
import 'package:grpc/grpc.dart';
import 'package:dartGRPC/proto/sdk.pb.dart';
import 'package:dartGRPC/proto/sdk.pbgrpc.dart';
import 'dart:convert';

Stream<CommandRequest> readLoop() async* {
  int num = 0;
  while (true) {
    var msg = new Message();
    msg.id = "123";
    msg.content = "Hello";

    String messageJSON = json.encode(msg);

    yield new CommandRequest()
      ..oP = "helo" + num.toString()
      ..data = messageJSON.codeUnits;

    num++;
    await new Future.delayed(new Duration(milliseconds: 1000));
  }
}

Future<Null> main(List<String> args) async {
  final channel = new ClientChannel('localhost',
      port: 19998,
      options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure()));
  final gatewayClient = new GatewayServiceClient(channel);

  try {
    final response = await gatewayClient.getServerTime(new Empty());
    print('Greeter client received: ${response.time}');

    final resp = gatewayClient.createCommandStream(readLoop());
    await for (var msg in resp) {
      print('Got message ${msg.oP}');
    }
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
