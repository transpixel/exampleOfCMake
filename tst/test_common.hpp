
// code common to test structure
namespace tst
{
	//! CTest (by default) checks for these main return values
	struct CTest
	{
		static constexpr int pass{ 0 }; // main() return for success
		static constexpr int fail{ 1 }; // main() return for test failure
	};
}

