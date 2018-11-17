// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message()
    ..Id = json['Id'] as String
    ..Content = json['Content'] as String;
}

Map<String, dynamic> _$MessageToJson(Message instance) =>
    <String, dynamic>{'Id': instance.Id, 'Content': instance.Content};
