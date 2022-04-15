include(CMakeForceCompiler)

# target system
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)

# cross compiler
set(CMAKE_C_COMPILER riscv64-unknown-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER riscv64-unknown-linux-gnu-g++)

set(CMAKE_C_FLAGS "-march=rv64gcv0p7_zfh_xtheadc -mabi=lp64d -mtune=c906 -static")
set(CMAKE_CXX_FLAGS "-march=rv64gcv0p7_zfh_xtheadc -mabi=lp64d -mtune=c906 -static")

set(CMAKE_C_FLAGS_DEBUG "-O0 -g3")
set(CMAKE_C_FLAGS_RELEASE "-O2 -s")
set(CMAKE_CXX_FLAGS_DEBUG "-std=c++17 -O0 -g3")
set(CMAKE_CXX_FLAGS_RELEASE "-std=c++17 -O2 -s")