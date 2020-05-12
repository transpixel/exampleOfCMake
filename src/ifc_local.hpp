
namespace ifc
{
	//! Example of local code used directly by public implementation
	struct State
	{
		int theValue; // internal data
		State(); // uses ifc_other code
		int operator() (); // increment value
	};
}

