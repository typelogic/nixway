Protobuf notes:
- `protoc --version` must match againts `libprotobuf` library
- `protoc -I=. --cpp_out=. sample.proto`
- `g++ -o main main.cpp sample.pb.cc -lprotobuf`
