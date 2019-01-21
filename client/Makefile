.phony: all clean

CXX = g++
PRACTICALSOCKET_PATH = /external/PracticalSocket/
INCLUDES += -I$(PRACTICALSOCKET_PATH) -I/usr/local/include 
LDFLAGS  += -L$(PRACTICALSOCKET_PATH) -L/usr/local/lib
CXXFLAGS += -g -std=c++11 -Wall -ansi -pedantic  $(INCLUDES) 
OPENCV_EXTRAS = `pkg-config --cflags --libs  opencv`

all: udp_client

udp_client: udp_client.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.h
	$(CXX) $(CXXFLAGS) $(LDFLAGS) udp_client.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.cpp -o udp_client

clean:
	rm -rf udp_client udp_client.o
	rm -rf PracticalSocket.o
