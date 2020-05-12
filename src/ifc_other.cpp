
#include "ifc_other.hpp"

#include <iostream>


namespace ifc
{
	int sValue{ 17 }; // extern visibility published via header

	void
	showValue
		()
	{
		std::cout << "sValue: " << sValue << std::endl;
	}
}

