///
//  Generated code. Do not modify.
//  source: proto/sdk.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'sdk.pb.dart';
export 'sdk.pb.dart';

class GatewayServiceClient extends Client {
  static final _$getServerTime = new ClientMethod<Empty, GetServerTimeReply>(
      '/proto.GatewayService/GetServerTime',
      (Empty value) => value.writeToBuffer(),
      (List<int> value) => new GetServerTimeReply.fromBuffer(value));
  static final _$createCommandStream =
      new ClientMethod<CommandRequest, CommandReply>(
          '/proto.GatewayService/CreateCommandStream',
          (CommandRequest value) => value.writeToBuffer(),
          (List<int> value) => new CommandReply.fromBuffer(value));

  GatewayServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<GetServerTimeReply> getServerTime(Empty request,
      {CallOptions options}) {
    final call = $createCall(
        _$getServerTime, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<CommandReply> createCommandStream(
      $async.Stream<CommandRequest> request,
      {CallOptions options}) {
    final call = $createCall(_$createCommandStream, request, options: options);
    return new ResponseStream(call);
  }
}

abstract class GatewayServiceBase extends Service {
  String get $name => 'proto.GatewayService';

  GatewayServiceBase() {
    $addMethod(new ServiceMethod<Empty, GetServerTimeReply>(
        'GetServerTime',
        getServerTime_Pre,
        false,
        false,
        (List<int> value) => new Empty.fromBuffer(value),
        (GetServerTimeReply value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<CommandRequest, CommandReply>(
        'CreateCommandStream',
        createCommandStream,
        true,
        true,
        (List<int> value) => new CommandRequest.fromBuffer(value),
        (CommandReply value) => value.writeToBuffer()));
  }

  $async.Future<GetServerTimeReply> getServerTime_Pre(
      ServiceCall call, $async.Future request) async {
    return getServerTime(call, await request);
  }

  $async.Future<GetServerTimeReply> getServerTime(
      ServiceCall call, Empty request);
  $async.Stream<CommandReply> createCommandStream(
      ServiceCall call, $async.Stream<CommandRequest> request);
}
