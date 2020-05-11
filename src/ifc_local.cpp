
#include "ifc_local.hpp"

namespace ifc
{

int
State :: operator()
	()
{
	return theValue++;
}

}

