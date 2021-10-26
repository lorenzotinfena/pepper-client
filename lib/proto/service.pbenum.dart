///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MatchRequest_Gender extends $pb.ProtobufEnum {
  static const MatchRequest_Gender Unknown = MatchRequest_Gender._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unknown');
  static const MatchRequest_Gender Male = MatchRequest_Gender._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Male');
  static const MatchRequest_Gender Female = MatchRequest_Gender._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Female');
  static const MatchRequest_Gender NonBinary = MatchRequest_Gender._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NonBinary');

  static const $core.List<MatchRequest_Gender> values = <MatchRequest_Gender> [
    Unknown,
    Male,
    Female,
    NonBinary,
  ];

  static final $core.Map<$core.int, MatchRequest_Gender> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MatchRequest_Gender? valueOf($core.int value) => _byValue[value];

  const MatchRequest_Gender._($core.int v, $core.String n) : super(v, n);
}

