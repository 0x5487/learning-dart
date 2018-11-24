import 'package:json_annotation/json_annotation.dart';

part 'command.g.dart';

@JsonSerializable()
class Command {
  String op;
  Object data;

  Command();

  factory Command.fromJson(Map<String, dynamic> json) =>
      _$CommandFromJson(json);
  Map<String, dynamic> toJson() => _$CommandToJson(this);
}
