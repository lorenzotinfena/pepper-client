///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pbenum.dart';

export 'service.pbenum.dart';

class MatchRequest_MyInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MatchRequest.MyInfo', createEmptyInstance: create)
    ..e<MatchRequest_Gender>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: MatchRequest_Gender.Unknown, valueOf: MatchRequest_Gender.valueOf, enumValues: MatchRequest_Gender.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.OU3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  MatchRequest_MyInfo._() : super();
  factory MatchRequest_MyInfo({
    MatchRequest_Gender? gender,
    $core.int? age,
    $core.double? latitude,
    $core.double? longitude,
  }) {
    final _result = create();
    if (gender != null) {
      _result.gender = gender;
    }
    if (age != null) {
      _result.age = age;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory MatchRequest_MyInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchRequest_MyInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchRequest_MyInfo clone() => MatchRequest_MyInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchRequest_MyInfo copyWith(void Function(MatchRequest_MyInfo) updates) => super.copyWith((message) => updates(message as MatchRequest_MyInfo)) as MatchRequest_MyInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchRequest_MyInfo create() => MatchRequest_MyInfo._();
  MatchRequest_MyInfo createEmptyInstance() => create();
  static $pb.PbList<MatchRequest_MyInfo> createRepeated() => $pb.PbList<MatchRequest_MyInfo>();
  @$core.pragma('dart2js:noInline')
  static MatchRequest_MyInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchRequest_MyInfo>(create);
  static MatchRequest_MyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  MatchRequest_Gender get gender => $_getN(0);
  @$pb.TagNumber(1)
  set gender(MatchRequest_Gender v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGender() => $_has(0);
  @$pb.TagNumber(1)
  void clearGender() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get age => $_getIZ(1);
  @$pb.TagNumber(2)
  set age($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAge() => $_has(1);
  @$pb.TagNumber(2)
  void clearAge() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get latitude => $_getN(2);
  @$pb.TagNumber(3)
  set latitude($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLatitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get longitude => $_getN(3);
  @$pb.TagNumber(4)
  set longitude($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLongitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearLongitude() => clearField(4);
}

class MatchRequest_Preferences extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MatchRequest.Preferences', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kilometersRange', $pb.PbFieldType.OU3, protoName: 'kilometersRange')
    ..e<MatchRequest_Gender>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: MatchRequest_Gender.Unknown, valueOf: MatchRequest_Gender.valueOf, enumValues: MatchRequest_Gender.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minAge', $pb.PbFieldType.OU3, protoName: 'minAge')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxAge', $pb.PbFieldType.OU3, protoName: 'maxAge')
    ..hasRequiredFields = false
  ;

  MatchRequest_Preferences._() : super();
  factory MatchRequest_Preferences({
    $core.int? kilometersRange,
    MatchRequest_Gender? gender,
    $core.int? minAge,
    $core.int? maxAge,
  }) {
    final _result = create();
    if (kilometersRange != null) {
      _result.kilometersRange = kilometersRange;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (minAge != null) {
      _result.minAge = minAge;
    }
    if (maxAge != null) {
      _result.maxAge = maxAge;
    }
    return _result;
  }
  factory MatchRequest_Preferences.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchRequest_Preferences.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchRequest_Preferences clone() => MatchRequest_Preferences()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchRequest_Preferences copyWith(void Function(MatchRequest_Preferences) updates) => super.copyWith((message) => updates(message as MatchRequest_Preferences)) as MatchRequest_Preferences; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchRequest_Preferences create() => MatchRequest_Preferences._();
  MatchRequest_Preferences createEmptyInstance() => create();
  static $pb.PbList<MatchRequest_Preferences> createRepeated() => $pb.PbList<MatchRequest_Preferences>();
  @$core.pragma('dart2js:noInline')
  static MatchRequest_Preferences getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchRequest_Preferences>(create);
  static MatchRequest_Preferences? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get kilometersRange => $_getIZ(0);
  @$pb.TagNumber(1)
  set kilometersRange($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKilometersRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearKilometersRange() => clearField(1);

  @$pb.TagNumber(2)
  MatchRequest_Gender get gender => $_getN(1);
  @$pb.TagNumber(2)
  set gender(MatchRequest_Gender v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minAge => $_getIZ(2);
  @$pb.TagNumber(3)
  set minAge($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinAge() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinAge() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxAge => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxAge($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxAge() => clearField(4);
}

class MatchRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MatchRequest', createEmptyInstance: create)
    ..aOM<MatchRequest_MyInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'myInfo', protoName: 'myInfo', subBuilder: MatchRequest_MyInfo.create)
    ..aOM<MatchRequest_Preferences>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preferences', subBuilder: MatchRequest_Preferences.create)
    ..hasRequiredFields = false
  ;

  MatchRequest._() : super();
  factory MatchRequest({
    MatchRequest_MyInfo? myInfo,
    MatchRequest_Preferences? preferences,
  }) {
    final _result = create();
    if (myInfo != null) {
      _result.myInfo = myInfo;
    }
    if (preferences != null) {
      _result.preferences = preferences;
    }
    return _result;
  }
  factory MatchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchRequest clone() => MatchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchRequest copyWith(void Function(MatchRequest) updates) => super.copyWith((message) => updates(message as MatchRequest)) as MatchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchRequest create() => MatchRequest._();
  MatchRequest createEmptyInstance() => create();
  static $pb.PbList<MatchRequest> createRepeated() => $pb.PbList<MatchRequest>();
  @$core.pragma('dart2js:noInline')
  static MatchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchRequest>(create);
  static MatchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MatchRequest_MyInfo get myInfo => $_getN(0);
  @$pb.TagNumber(1)
  set myInfo(MatchRequest_MyInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMyInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMyInfo() => clearField(1);
  @$pb.TagNumber(1)
  MatchRequest_MyInfo ensureMyInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  MatchRequest_Preferences get preferences => $_getN(1);
  @$pb.TagNumber(2)
  set preferences(MatchRequest_Preferences v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPreferences() => $_has(1);
  @$pb.TagNumber(2)
  void clearPreferences() => clearField(2);
  @$pb.TagNumber(2)
  MatchRequest_Preferences ensurePreferences() => $_ensure(1);
}

class MatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MatchResponse', createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatKey', protoName: 'chatKey')
    ..hasRequiredFields = false
  ;

  MatchResponse._() : super();
  factory MatchResponse({
    $core.String? chatKey,
  }) {
    final _result = create();
    if (chatKey != null) {
      _result.chatKey = chatKey;
    }
    return _result;
  }
  factory MatchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchResponse clone() => MatchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchResponse copyWith(void Function(MatchResponse) updates) => super.copyWith((message) => updates(message as MatchResponse)) as MatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MatchResponse create() => MatchResponse._();
  MatchResponse createEmptyInstance() => create();
  static $pb.PbList<MatchResponse> createRepeated() => $pb.PbList<MatchResponse>();
  @$core.pragma('dart2js:noInline')
  static MatchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchResponse>(create);
  static MatchResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get chatKey => $_getSZ(0);
  @$pb.TagNumber(2)
  set chatKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasChatKey() => $_has(0);
  @$pb.TagNumber(2)
  void clearChatKey() => clearField(2);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.String? text,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

