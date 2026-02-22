CC      := gcc
CFLAGS  := -Wall -Wextra -std=c11 -g
LDFLAGS :=
LDLIBS  :=

.PHONY: all clean
all: tedtalktest

OBJS := tedtalktest.o tedtalk.o EventTime.o

tedtalktest: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) $(LDLIBS) -o $@

tedtalktest.o: tedtalktest.c tedtalk.h EventTime.h
	$(CC) $(CFLAGS) -c $< -o $@

tedtalk.o: tedtalk.c tedtalk.h EventTime.h
	$(CC) $(CFLAGS) -c $< -o $@

EventTime.o: EventTime.c EventTime.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f tedtalktest *.o
