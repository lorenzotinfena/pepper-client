pepper-client
# Install
- android: https://play.google.com/store/apps/details?id=pepper_client.pepper_client.pepper_client

# How compile .proto
- for dart:
    ```
    protoc -I proto proto/service.proto --dart_out=grpc:proto --experimental_allow_proto3_optional=true
    ```
# Proposal features
- Add max distance support
- Add purpose of the chat as a preference
- Add keywords as preferences
