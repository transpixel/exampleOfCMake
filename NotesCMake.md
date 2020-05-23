
# CMake Notes

## Overall

Is a "buildsystem" used to manufacture computer programs and other binary
data from software source materials.o

Cmake is a generic tool that creates an environment-specific native build
system. I.e. cmake is a meta-build system and the output from cmake is
an actual native build system specific to the local environment (OS,
toolsets, IDEs, etc). The native build system is the one that performs
the actual build operations.

In order to configure details of the native build system, the following
process is used:
- use cmake to create a tentative native build system (dir structures, etc)
- use ccmake (or cmake-gui) to configure the native build system
- use native build system (directly, or indirectly via "cmake --build ...")
- use cmake to update the native build system (if build structure changes)
-- retains the configuration of the native system (the CMakeCache)
-- updates the native build system rules as to reflect structure changes

CMake involves a paradigm for building software. This paradigm is supported
by a number of tools provided as part of a cmake distribution/installation.
These include
- cmake (for generating the native build system)
- cmake --build ... (for invoking/running the native build system)
- ctest (for running unit tests)
- cpack (for creating operating system distribution packages)
- cdash (for continuous integration)

The cmake build paradigm is structured around identification of various
specific targets and relationships between them. The targets are identified
and relationships are expressed within text files using a cmake-specific
language.

By convention, cmake expects a cmake-langage file named "CMakeLists.txt"
within each project directory that is being processed by cmake. Arbitrary
files may be incorporated into the CMakeLists.txt processing with include()
directive (like c-language "#include").

In general, a hierarchy of CMakeLists.txt files is used to express the
project-specific build objective and goals, while included text files are
particularly useful for adding project-independent specific capabilities
(e.g. vendor info that should go into packaging, company-wide developer
configurations, etc).

The language is interpreted by processing commands in the order they are
encountered (sequential linear order, sections of which can be repeated by
loop constructions, or executed conditionally per branch langage constructs)

The langage includes variables which can be created and set.
- general cmake variables (CMAKE\_SOURCE\_DIR, CMAKE\_BINARY\_DIR, etc)
- cmake configured values (PROJECT\_NAME, PROJECT\_VERSION, etc)
- user variables (SOME\_ARBITRARY\_NAME)

With "Modern" cmake (e.g. cmake 3.0 and higher), the build process can
utilize and "object oriented" approach. This is generally a much simpler
process and *REPLACES* many of the old commands. Unfortunately, many
search hits, and tutorial documents present the old methods and can lead
to considerable confusion. If starting anew with cmake, it is generally best
to focus only on "modern cmake" descriptions and information.

The cmake "targets" (e.g. library, executable, a file, custom) can be
considered to be like objects. The "add\_..." functions act like constructors
and the target\_... functions act like methods that configure the target
objects.

The targets can be created (e.g. add\_library() or add\_exectuable()) in
a higher level CMakeLists.txt file, and then populated in subdirectory
CMakeLists.txt files. E.g. create a library target at top level, and have
each of several subdirectory CMakeLists.txt files add sources to that target.


The cmake language...
- overall is interpreted mostly in a "beginning-to-end" linear flow
--- sequential interpretation (primary use)
--- looping (for, while)
--- branching (if, break, continue, return)
- langage blocks are contained within individual files
-- E.g. CMakeLists.txt and optional "included()"ed files
- files may include other files but order matters
-- effect is same as pasting code from included file at the include location
- ultimately the file structure defines a single sequence of cmake instructions
-- the sequence is used to create a native build system (then disgarded)
-- the native build system is used for dependency checking, and compilation.

The cmake language is used to identify/define individual targets, to
set properties on those targets, and to specify on which items each target
depends (via the target\_...() commands)

