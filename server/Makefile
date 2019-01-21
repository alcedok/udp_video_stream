
.phony: all clean realclean

CXX = g++
PRACTICALSOCKET_PATH = /external/PracticalSocket/
INCLUDES += -I$(PRACTICALSOCKET_PATH) -I/usr/local/include 
LDFLAGS  += -L$(PRACTICALSOCKET_PATH) -L/usr/local/lib
CXXFLAGS += -g -std=c++11 -Wall -ansi -pedantic  $(INCLUDES) 
OPENCV_EXTRAS = `pkg-config --cflags --libs  opencv`

all: udp_server

udp_server: udp_server.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.h
	$(CXX) $(CXXFLAGS) $(LDFLAGS) udp_server.cpp $(PRACTICALSOCKET_PATH)PracticalSocket.cpp -o udp_server

test_image.jpg:
	curl -k -o test_image.jpg -L https://cdn.bulbagarden.net/upload/thumb/6/62/093Haunter.png/250px-093Haunter.png

opencv_test: opencv_test.cpp test_image.jpg
	$(CXX) $(CXXFLAGS) $(LDFLAGS) opencv_test.cpp -o opencv_test $(OPENCV_EXTRAS) 

clean:
	rm -rf udp_server udp_server.o
	rm -rf PracticalSocket.o
	rm -rf opencv_test opencv_test.o

realclean: clean
	rm test_image.jpg test_image_gray.jpg