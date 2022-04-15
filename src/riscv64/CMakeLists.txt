cmake_minimum_required(VERSION 3.2)
project(mygemm C CXX)
ENABLE_LANGUAGE(ASM)

set(bin sgemm)
set(SRC test_MMult.cpp REF_MMult.cpp random_matrix.cpp print_matrix.cpp compare_matrices.cpp copy_matrix.cpp dclock.cpp)

option(OPT "opt version for ${bin}" MMult0)
if (OPT)
    set(SRC ${SRC} ${OPT}.cpp)
endif()

add_executable(${bin} ${SRC})
install(TARGETS ${bin} DESTINATION bin)