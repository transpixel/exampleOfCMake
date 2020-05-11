
#include "interface.hpp"

#include <iostream>

int
main
	()
{
	std::vector<int> const vals{ ifc::simulatedValues() };
	for (int const & val : vals)
	{
		std::cout << "val: " << val << std::endl;
	}
}

