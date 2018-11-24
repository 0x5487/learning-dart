// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Command _$CommandFromJson(Map<String, dynamic> json) {
  return Command()
    ..op = json['op'] as String
    ..data = json['data'];
}

Map<String, dynamic> _$CommandToJson(Command instance) =>
    <String, dynamic>{'op': instance.op, 'data': instance.data};
