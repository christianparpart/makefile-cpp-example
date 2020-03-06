CXX = g++
LD = g++

all: program

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c -o main.o main.cpp

functions.o: functions.cpp
	$(CXX) $(CXXFLAGS) -c -o functions.o functions.cpp

program: main.o functions.o
	$(LD) $(LDFLAGS) main.o functions.o

clean:
	rm -f *.o program

.PHONY: all clean
