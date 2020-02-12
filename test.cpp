#define CATCH_CONFIG_MAIN
#include "catch.hpp"

TEST_CASE ("Factorial test cases:", ["factorials"]) {
    REQUIRE( Factorial(2) == 2);
    REQUIRE( Factorial(3) == 6);
    REQUIRE( Factorial(0) == 1);
}
