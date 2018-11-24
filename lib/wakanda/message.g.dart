// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message()
    ..id = json['id'] as String
    ..group_id = json['group_id'] as String
    ..type = json['type'] as int
    ..seq_id = json['seq_id'] as int
    ..content = json['content'] as String;
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'group_id': instance.group_id,
      'type': instance.type,
      'seq_id': instance.seq_id,
      'content': instance.content
    };
