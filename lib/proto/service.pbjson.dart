///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use matchRequestDescriptor instead')
const MatchRequest$json = const {
  '1': 'MatchRequest',
  '2': const [
    const {'1': 'myInfo', '3': 1, '4': 1, '5': 11, '6': '.MatchRequest.MyInfo', '10': 'myInfo'},
    const {'1': 'preferences', '3': 2, '4': 1, '5': 11, '6': '.MatchRequest.Preferences', '10': 'preferences'},
  ],
  '3': const [MatchRequest_MyInfo$json, MatchRequest_Preferences$json],
  '4': const [MatchRequest_Gender$json],
};

@$core.Deprecated('Use matchRequestDescriptor instead')
const MatchRequest_MyInfo$json = const {
  '1': 'MyInfo',
  '2': const [
    const {'1': 'gender', '3': 1, '4': 1, '5': 14, '6': '.MatchRequest.Gender', '10': 'gender'},
    const {'1': 'age', '3': 2, '4': 1, '5': 13, '10': 'age'},
    const {'1': 'latitude', '3': 3, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 4, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

@$core.Deprecated('Use matchRequestDescriptor instead')
const MatchRequest_Preferences$json = const {
  '1': 'Preferences',
  '2': const [
    const {'1': 'kilometersRange', '3': 1, '4': 1, '5': 13, '10': 'kilometersRange'},
    const {'1': 'gender', '3': 2, '4': 1, '5': 14, '6': '.MatchRequest.Gender', '9': 0, '10': 'gender', '17': true},
    const {'1': 'minAge', '3': 3, '4': 1, '5': 13, '10': 'minAge'},
    const {'1': 'maxAge', '3': 4, '4': 1, '5': 13, '10': 'maxAge'},
  ],
  '8': const [
    const {'1': '_gender'},
  ],
};

@$core.Deprecated('Use matchRequestDescriptor instead')
const MatchRequest_Gender$json = const {
  '1': 'Gender',
  '2': const [
    const {'1': 'Unknown', '2': 0},
    const {'1': 'Male', '2': 1},
    const {'1': 'Female', '2': 2},
    const {'1': 'NonBinary', '2': 3},
  ],
};

/// Descriptor for `MatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchRequestDescriptor = $convert.base64Decode('CgxNYXRjaFJlcXVlc3QSLAoGbXlJbmZvGAEgASgLMhQuTWF0Y2hSZXF1ZXN0Lk15SW5mb1IGbXlJbmZvEjsKC3ByZWZlcmVuY2VzGAIgASgLMhkuTWF0Y2hSZXF1ZXN0LlByZWZlcmVuY2VzUgtwcmVmZXJlbmNlcxqCAQoGTXlJbmZvEiwKBmdlbmRlchgBIAEoDjIULk1hdGNoUmVxdWVzdC5HZW5kZXJSBmdlbmRlchIQCgNhZ2UYAiABKA1SA2FnZRIaCghsYXRpdHVkZRgDIAEoAVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAQgASgBUglsb25naXR1ZGUapQEKC1ByZWZlcmVuY2VzEigKD2tpbG9tZXRlcnNSYW5nZRgBIAEoDVIPa2lsb21ldGVyc1JhbmdlEjEKBmdlbmRlchgCIAEoDjIULk1hdGNoUmVxdWVzdC5HZW5kZXJIAFIGZ2VuZGVyiAEBEhYKBm1pbkFnZRgDIAEoDVIGbWluQWdlEhYKBm1heEFnZRgEIAEoDVIGbWF4QWdlQgkKB19nZW5kZXIiOgoGR2VuZGVyEgsKB1Vua25vd24QABIICgRNYWxlEAESCgoGRmVtYWxlEAISDQoJTm9uQmluYXJ5EAM=');
@$core.Deprecated('Use matchResponseDescriptor instead')
const MatchResponse$json = const {
  '1': 'MatchResponse',
  '2': const [
    const {'1': 'chatKey', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'chatKey', '17': true},
  ],
  '8': const [
    const {'1': '_chatKey'},
  ],
};

/// Descriptor for `MatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchResponseDescriptor = $convert.base64Decode('Cg1NYXRjaFJlc3BvbnNlEh0KB2NoYXRLZXkYAiABKAlIAFIHY2hhdEtleYgBAUIKCghfY2hhdEtleQ==');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhIKBHRleHQYASABKAlSBHRleHQ=');
