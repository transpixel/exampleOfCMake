
#include "ifc_other.hpp"

#include "test_common.hpp"

int
main
	()
{
	int status{ tst::CTest::pass };
	// simulate test failure
	status = tst::CTest::fail;
	std::cerr << "It's OKAY - this test is intended to fail" << std::endl;
	return status;
}
