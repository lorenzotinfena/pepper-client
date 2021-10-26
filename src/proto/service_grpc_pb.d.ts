// package: 
// file: service.proto

/* tslint:disable */
/* eslint-disable */

import * as grpc from "grpc";
import * as service_pb from "./service_pb";

interface IServiceService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
    match: IServiceService_IMatch;
    startChat: IServiceService_IStartChat;
}

interface IServiceService_IMatch extends grpc.MethodDefinition<service_pb.MatchRequest, service_pb.MatchResponse> {
    path: "/Service/Match";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<service_pb.MatchRequest>;
    requestDeserialize: grpc.deserialize<service_pb.MatchRequest>;
    responseSerialize: grpc.serialize<service_pb.MatchResponse>;
    responseDeserialize: grpc.deserialize<service_pb.MatchResponse>;
}
interface IServiceService_IStartChat extends grpc.MethodDefinition<service_pb.Message, service_pb.Message> {
    path: "/Service/StartChat";
    requestStream: true;
    responseStream: true;
    requestSerialize: grpc.serialize<service_pb.Message>;
    requestDeserialize: grpc.deserialize<service_pb.Message>;
    responseSerialize: grpc.serialize<service_pb.Message>;
    responseDeserialize: grpc.deserialize<service_pb.Message>;
}

export const ServiceService: IServiceService;

export interface IServiceServer {
    match: grpc.handleUnaryCall<service_pb.MatchRequest, service_pb.MatchResponse>;
    startChat: grpc.handleBidiStreamingCall<service_pb.Message, service_pb.Message>;
}

export interface IServiceClient {
    match(request: service_pb.MatchRequest, callback: (error: grpc.ServiceError | null, response: service_pb.MatchResponse) => void): grpc.ClientUnaryCall;
    match(request: service_pb.MatchRequest, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: service_pb.MatchResponse) => void): grpc.ClientUnaryCall;
    match(request: service_pb.MatchRequest, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: service_pb.MatchResponse) => void): grpc.ClientUnaryCall;
    startChat(): grpc.ClientDuplexStream<service_pb.Message, service_pb.Message>;
    startChat(options: Partial<grpc.CallOptions>): grpc.ClientDuplexStream<service_pb.Message, service_pb.Message>;
    startChat(metadata: grpc.Metadata, options?: Partial<grpc.CallOptions>): grpc.ClientDuplexStream<service_pb.Message, service_pb.Message>;
}

export class ServiceClient extends grpc.Client implements IServiceClient {
    constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
    public match(request: service_pb.MatchRequest, callback: (error: grpc.ServiceError | null, response: service_pb.MatchResponse) => void): grpc.ClientUnaryCall;
    public match(request: service_pb.MatchRequest, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: service_pb.MatchResponse) => void): grpc.ClientUnaryCall;
    public match(request: service_pb.MatchRequest, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: service_pb.MatchResponse) => void): grpc.ClientUnaryCall;
    public startChat(options?: Partial<grpc.CallOptions>): grpc.ClientDuplexStream<service_pb.Message, service_pb.Message>;
    public startChat(metadata?: grpc.Metadata, options?: Partial<grpc.CallOptions>): grpc.ClientDuplexStream<service_pb.Message, service_pb.Message>;
}
