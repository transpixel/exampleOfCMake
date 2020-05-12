
#include "ifc_public.hpp"

#include "ifc_local.hpp"
#include "ifc_other.hpp"

#include <algorithm>


namespace ifc
{

std::vector<int>
simulatedValues
	()
{
	std::vector<int> vals;
	vals.resize(5u);
	ifc::State state;
	std::generate
		( std::begin(vals), std::end(vals)
		, [&state] () { return state(); } // lambda func requires c++11
		);
	return vals;
}

}
