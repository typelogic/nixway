Protobuf notes:
- `protoc --version` must match againts `libprotobuf` library
- `protoc -I=. --cpp_out=. cardaccessproto.proto`
- `g++ -o main main.cpp cardaccessproto.pb.cc -lprotobuf`
