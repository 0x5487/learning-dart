import 'package:dartGRPC/wakanda/command.dart';
import 'package:dartGRPC/wakanda/message.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'dart:convert';

IOWebSocketChannel channel;

void main(List<String> args) async {
  print("start");
  try {
    channel = new IOWebSocketChannel.connect(
      "ws://localhost:19999/ws",
    );

    channel.stream.listen((message) {
      print("received $message");
    }, onError: (error, StackTrace stackTrace) {
      // error handling
      print("err $error");
    }, onDone: () {
      // communication has been closed
      print("done");
    });

    sendMessage();
  } catch (e) {
    print('Caught error: $e');
  }

  await new Future.delayed(new Duration(milliseconds: 60000));
}

Future<Null> sendMessage() async {
  int num = 0;

  while (true) {
    var msg = new Message();
    msg.seq_id = 12345678;
    msg.content = "Hello Dart $num";
    msg.type = 2;
    msg.group_id = "2f592803-5866-474f-a688-a4fa5a58dda9";

    var cmd = new Command();
    cmd.op = "MSG";
    cmd.data = msg;

    var jsonCmd = json.encode(cmd);
    channel.sink.add(jsonCmd);

    num++;
    await new Future.delayed(new Duration(milliseconds: 1000));
  }
}
