
#include "ifc_public.hpp"

#include "test_common.hpp"

#include <iostream>
#include <numeric>


int
main
	()
{
	int status{ tst::CTest::pass };

	// exercise code
	std::vector<int> const vals{ ifc::simulatedValues() };

	// check if project satisfies general expaction
	int const gotSum{ std::accumulate(std::begin(vals), std::end(vals), 0) };
	if (! (0 < gotSum))
	{
		status = tst::CTest::fail;
		// diagnostics
		std::cerr << "Fail:" << std::endl;
		std::cerr << "gotSum: " << gotSum << std::endl;
	}
	else
	{
		// success message
		std::cout << "Pass:" << std::endl;
	}

	// report status (via return code)
	return status;
}

