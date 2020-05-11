
#include "interface.hpp"

#include "bar.hpp"
#include "ifc_local.hpp"

#include <algorithm>


namespace ifc
{

std::vector<int>
simulatedValues
	()
{
	std::vector<int> vals;
	vals.resize(5u);
	ifc::State state{ bar::sBar };
	std::generate
		( std::begin(vals), std::end(vals)
		, [&state] () { return state(); }
		);
	return vals;
}

}
