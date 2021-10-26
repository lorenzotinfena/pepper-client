// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var service_pb = require('./service_pb.js');

function serialize_MatchRequest(arg) {
  if (!(arg instanceof service_pb.MatchRequest)) {
    throw new Error('Expected argument of type MatchRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_MatchRequest(buffer_arg) {
  return service_pb.MatchRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_MatchResponse(arg) {
  if (!(arg instanceof service_pb.MatchResponse)) {
    throw new Error('Expected argument of type MatchResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_MatchResponse(buffer_arg) {
  return service_pb.MatchResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_Message(arg) {
  if (!(arg instanceof service_pb.Message)) {
    throw new Error('Expected argument of type Message');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_Message(buffer_arg) {
  return service_pb.Message.deserializeBinary(new Uint8Array(buffer_arg));
}


var ServiceService = exports.ServiceService = {
  match: {
    path: '/Service/Match',
    requestStream: false,
    responseStream: false,
    requestType: service_pb.MatchRequest,
    responseType: service_pb.MatchResponse,
    requestSerialize: serialize_MatchRequest,
    requestDeserialize: deserialize_MatchRequest,
    responseSerialize: serialize_MatchResponse,
    responseDeserialize: deserialize_MatchResponse,
  },
  startChat: {
    path: '/Service/StartChat',
    requestStream: true,
    responseStream: true,
    requestType: service_pb.Message,
    responseType: service_pb.Message,
    requestSerialize: serialize_Message,
    requestDeserialize: deserialize_Message,
    responseSerialize: serialize_Message,
    responseDeserialize: deserialize_Message,
  },
};

exports.ServiceClient = grpc.makeGenericClientConstructor(ServiceService);
