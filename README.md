pepper-client

# How compile .proto
- for dart:
    ```
    protoc -I proto proto/service.proto --dart_out=grpc:proto --experimental_allow_proto3_optional=true
    ```