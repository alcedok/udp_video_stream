
.phony: all clean realclean

CXX = g++
CXXFLAGS = -g -std=c++11 -Wall -ansi -pedantic

PRACTICALSOCKET_PATH = /external/PracticalSocket/

INCLUDES = -I$(PRACTICALSOCKET_PATH)
LDFLAGS  = -L$(PRACTICALSOCKET_PATH)

all: udp_client

udp_client: udp_client.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.h
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) -o udp_client udp_client.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.cpp

clean:
	rm -rf udp_client udp_client.o
	rm -rf PracticalSocket.o