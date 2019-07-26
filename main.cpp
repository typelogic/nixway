#include <chrono>
#include <condition_variable>
#include <iostream>
#include <thread>

#include <gtest/gtest.h>

#include <Poco/File.h>
#include <Poco/TemporaryFile.h>

class Fixture : public ::testing::Test
{
public:
    void SetUp()
    {
        std::cout << "--setup--\n";
    }

    void TearDown()
    {
        std::cout << "--teardown--\n";
    }
};

TEST(Poco, Test1)
{
    Poco::TemporaryFile tf;
    std::string s = tf.tempName();
    //std::cout << s;
    Poco::File f(s);
    if (f.createFile())
    {
        ASSERT_TRUE(f.exists());
        f.remove();
        ASSERT_FALSE(f.exists());
    }
    else
    {
        FAIL();
    }
}

TEST_F(Fixture, Test2)
{
}

int main(int argc, char *argv[])
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
