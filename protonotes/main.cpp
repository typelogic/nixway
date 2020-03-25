#include "sample.pb.h"

#include <fstream>
#include <iostream>
#include <string>

int main(int argc, char* argv[])
{
    GOOGLE_PROTOBUF_VERIFY_VERSION;
#if 0
    std::fstream output(argv[1], std::ios::out | std::ios::trunc | std::ios::binary);

    std::string s = "apple";
    unsigned char faceArray[64];
    std::string pin = "1234";
    example::Info info;
    //info.set_face((const char*)faceArray);
    info.set_face((const char*)s.c_str());
    info.set_pin((const char*)pin.c_str());

    if (!info.SerializeToOstream(&output)) {
        std::cerr << "Failed to write address book." << std::endl;
      return -1;
    }
#else
    unsigned char buf[] = {0x61, 0x70, 0x70, 0x6c, 0x65, 0x00};
    std::cout << buf << std::endl;

    example::Info info;
    std::fstream input(argv[1], std::ios::in | std::ios::binary);
    if (!info.ParseFromIstream(&input)) {
        std::cerr << "Failed to parse address book." << std::endl;
        return -1;
    } else {
        std::cout << info.pin() << std::endl;
        std::cout << info.face() << std::endl;
    }
#endif

    google::protobuf::ShutdownProtobufLibrary();
    return 0;
}
