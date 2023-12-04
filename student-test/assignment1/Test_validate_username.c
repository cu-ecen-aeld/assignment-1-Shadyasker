// Test_validate_username.c

#include "unity.h"
#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

void test_validate_my_username()
{
    const char* hardcodedUsername = my_username();
    const char* confFileUsername = malloc_username_from_conf_file();
    TEST_ASSERT_EQUAL_STRING_MESSAGE(hardcodedUsername, confFileUsername, "Username mismatch!");
    free((void*)confFileUsername);
}

// Other test functions can be added here

