#the compiler:clang++ for C++ program 
CXX=clang++
#compiler flags:
#-g adds debugging information to the executabble 
#-Wall turns on most ,but not all, compiler warings
#-pg enable gprof
#-o0  no optimizing
CXXFLAGS= -g -W -O0 -pg 

SRCS=$(wildcard *.cpp )
OBJS=$(patsubst %.cpp,%.exe,$(SRCS))
.PHONY: all clean
all:$(OBJS)
%.exe:%.cpp
	$(CXX) $(CXXFLAGS)  $< -o $@
clean:
	rm -f $(OBJS) *.out *~
