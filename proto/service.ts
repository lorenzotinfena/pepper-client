// Original file: proto/service.proto

import type * as grpc from '@grpc/grpc-js'
import type { MethodDefinition } from '@grpc/proto-loader'
import type { MatchRequest as _MatchRequest, MatchRequest__Output as _MatchRequest__Output } from './MatchRequest';
import type { MatchResponse as _MatchResponse, MatchResponse__Output as _MatchResponse__Output } from './MatchResponse';
import type { Message as _Message, Message__Output as _Message__Output } from './Message';

export interface ServiceClient extends grpc.Client {
  Match(argument: _MatchRequest, metadata: grpc.Metadata, options?: grpc.CallOptions): grpc.ClientReadableStream<_MatchResponse__Output>;
  Match(argument: _MatchRequest, options?: grpc.CallOptions): grpc.ClientReadableStream<_MatchResponse__Output>;
  match(argument: _MatchRequest, metadata: grpc.Metadata, options?: grpc.CallOptions): grpc.ClientReadableStream<_MatchResponse__Output>;
  match(argument: _MatchRequest, options?: grpc.CallOptions): grpc.ClientReadableStream<_MatchResponse__Output>;
  
  StartChat(metadata: grpc.Metadata, options?: grpc.CallOptions): grpc.ClientDuplexStream<_Message, _Message__Output>;
  StartChat(options?: grpc.CallOptions): grpc.ClientDuplexStream<_Message, _Message__Output>;
  startChat(metadata: grpc.Metadata, options?: grpc.CallOptions): grpc.ClientDuplexStream<_Message, _Message__Output>;
  startChat(options?: grpc.CallOptions): grpc.ClientDuplexStream<_Message, _Message__Output>;
  
}

export interface ServiceHandlers extends grpc.UntypedServiceImplementation {
  Match: grpc.handleServerStreamingCall<_MatchRequest__Output, _MatchResponse>;
  
  StartChat: grpc.handleBidiStreamingCall<_Message__Output, _Message>;
  
}

export interface ServiceDefinition extends grpc.ServiceDefinition {
  Match: MethodDefinition<_MatchRequest, _MatchResponse, _MatchRequest__Output, _MatchResponse__Output>
  StartChat: MethodDefinition<_Message, _Message, _Message__Output, _Message__Output>
}
