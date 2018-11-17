///
//  Generated code. Do not modify.
//  source: proto/sdk.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class CommandRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CommandRequest', package: const $pb.PackageName('proto'))
    ..aOS(1, 'oP')
    ..a<List<int>>(2, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CommandRequest() : super();
  CommandRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CommandRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CommandRequest clone() => new CommandRequest()..mergeFromMessage(this);
  CommandRequest copyWith(void Function(CommandRequest) updates) => super.copyWith((message) => updates(message as CommandRequest));
  $pb.BuilderInfo get info_ => _i;
  static CommandRequest create() => new CommandRequest();
  static $pb.PbList<CommandRequest> createRepeated() => new $pb.PbList<CommandRequest>();
  static CommandRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CommandRequest _defaultInstance;
  static void $checkItem(CommandRequest v) {
    if (v is! CommandRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get oP => $_getS(0, '');
  set oP(String v) { $_setString(0, v); }
  bool hasOP() => $_has(0);
  void clearOP() => clearField(1);

  List<int> get data => $_getN(1);
  set data(List<int> v) { $_setBytes(1, v); }
  bool hasData() => $_has(1);
  void clearData() => clearField(2);
}

class CommandReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CommandReply', package: const $pb.PackageName('proto'))
    ..aOS(1, 'oP')
    ..a<List<int>>(2, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CommandReply() : super();
  CommandReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CommandReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CommandReply clone() => new CommandReply()..mergeFromMessage(this);
  CommandReply copyWith(void Function(CommandReply) updates) => super.copyWith((message) => updates(message as CommandReply));
  $pb.BuilderInfo get info_ => _i;
  static CommandReply create() => new CommandReply();
  static $pb.PbList<CommandReply> createRepeated() => new $pb.PbList<CommandReply>();
  static CommandReply getDefault() => _defaultInstance ??= create()..freeze();
  static CommandReply _defaultInstance;
  static void $checkItem(CommandReply v) {
    if (v is! CommandReply) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get oP => $_getS(0, '');
  set oP(String v) { $_setString(0, v); }
  bool hasOP() => $_has(0);
  void clearOP() => clearField(1);

  List<int> get data => $_getN(1);
  set data(List<int> v) { $_setBytes(1, v); }
  bool hasData() => $_has(1);
  void clearData() => clearField(2);
}

class GetServerTimeReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetServerTimeReply', package: const $pb.PackageName('proto'))
    ..aInt64(1, 'time')
    ..hasRequiredFields = false
  ;

  GetServerTimeReply() : super();
  GetServerTimeReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetServerTimeReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetServerTimeReply clone() => new GetServerTimeReply()..mergeFromMessage(this);
  GetServerTimeReply copyWith(void Function(GetServerTimeReply) updates) => super.copyWith((message) => updates(message as GetServerTimeReply));
  $pb.BuilderInfo get info_ => _i;
  static GetServerTimeReply create() => new GetServerTimeReply();
  static $pb.PbList<GetServerTimeReply> createRepeated() => new $pb.PbList<GetServerTimeReply>();
  static GetServerTimeReply getDefault() => _defaultInstance ??= create()..freeze();
  static GetServerTimeReply _defaultInstance;
  static void $checkItem(GetServerTimeReply v) {
    if (v is! GetServerTimeReply) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Int64 get time => $_getI64(0);
  set time(Int64 v) { $_setInt64(0, v); }
  bool hasTime() => $_has(0);
  void clearTime() => clearField(1);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty', package: const $pb.PackageName('proto'))
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => new Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  static Empty create() => new Empty();
  static $pb.PbList<Empty> createRepeated() => new $pb.PbList<Empty>();
  static Empty getDefault() => _defaultInstance ??= create()..freeze();
  static Empty _defaultInstance;
  static void $checkItem(Empty v) {
    if (v is! Empty) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

