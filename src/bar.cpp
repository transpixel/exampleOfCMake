
#include "bar.hpp"

#include <iostream>


namespace bar
{
	int sBar{ 17 };

	void
	showBar
		()
	{
		std::cout << "sBar: " << sBar << std::endl;
	}
}

