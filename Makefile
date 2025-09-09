# single_chan_pkt_fwd - Single Channel LoRaWAN Gateway

CC      = gcc
CXX     = g++
CFLAGS  = -c -Wall -O2
CXXFLAGS= -c -Wall -O2 -std=gnu++14
LIBS    = -lwiringPi

all: single_chan_pkt_fwd

single_chan_pkt_fwd: main.o base64.o
	$(CXX) main.o base64.o $(LIBS) -o $@

main.o: main.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

base64.o: base64.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o single_chan_pkt_fwd
