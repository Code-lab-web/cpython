### Debugging Firebase-related compilation issues

#### Linux libraries

For Linux, library versions are provided for 32-bit (i386) and 64-bit (x86_64) platforms.

Note that the Linux libraries were tested using GCC 4.8.0, GCC 7.2.0, and Clang 5.0 on Ubuntu.

When building C++ desktop apps on Linux, link the `pthread` system library to your project. Consult your compiler documentation for more information. If you're building with GCC 5 or later, define `-D_GLIBCXX_USE_CXX11_ABI=0`.
