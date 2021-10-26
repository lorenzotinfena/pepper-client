///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class ServiceClient extends $grpc.Client {
  static final _$match = $grpc.ClientMethod<$0.MatchRequest, $0.MatchResponse>(
      '/Service/Match',
      ($0.MatchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MatchResponse.fromBuffer(value));
  static final _$startChat = $grpc.ClientMethod<$0.Message, $0.Message>(
      '/Service/StartChat',
      ($0.Message value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Message.fromBuffer(value));

  ServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MatchResponse> match($0.MatchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$match, request, options: options);
  }

  $grpc.ResponseStream<$0.Message> startChat($async.Stream<$0.Message> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startChat, request, options: options);
  }
}

abstract class ServiceBase extends $grpc.Service {
  $core.String get $name => 'Service';

  ServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MatchRequest, $0.MatchResponse>(
        'Match',
        match_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MatchRequest.fromBuffer(value),
        ($0.MatchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Message, $0.Message>(
        'StartChat',
        startChat,
        true,
        true,
        ($core.List<$core.int> value) => $0.Message.fromBuffer(value),
        ($0.Message value) => value.writeToBuffer()));
  }

  $async.Future<$0.MatchResponse> match_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MatchRequest> request) async {
    return match(call, await request);
  }

  $async.Future<$0.MatchResponse> match(
      $grpc.ServiceCall call, $0.MatchRequest request);
  $async.Stream<$0.Message> startChat(
      $grpc.ServiceCall call, $async.Stream<$0.Message> request);
}
