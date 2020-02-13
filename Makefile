CXX = g++
CXXFLAGS	= -std=c++17 -Wall
CXXTESTFLAGS = --coverage # can be used to generate files that help calculate unit test coverage
CXXGDB = -ggdb

all: test

clean:
	rm test 
	rm functions_to_implement.o

test: test.cpp functions_to_implement.o
	$(CXX) $(CXXFLAGS) test.cpp functions_to_implement.o -o test

#cov: Rectangle.o test.cpp
#	$(CXX) $(CXXFLAGS) $(CXXTESTFLAGS) test.cpp Rectangle.o -o test

functions_to_implement.o: functions_to_implement.cpp
	$(CXX) $(CXXFLAGS) -c functions_to_implement.cpp
