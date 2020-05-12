
#include "ifc_local.hpp"

#include "ifc_other.hpp"

namespace ifc
{

	State :: State
		()
		: theValue{ sValue }
	{ }

	int
	State :: operator()
		()
	{
		return theValue++;
	}

}

