CFLAGS = -Wall -pedantic -std=c99

.PHONY: all clean debug

debug: CFLAGS += -g
debug: clean all

all: fitz

clean:
	rm -f *.o fitz

fitz.o: fitz.c
	gcc $(CFLAGS) -c fitz.c -o fitz.o

fitz: fitz.o
	gcc $(CFLAGS) fitz.o -o fitz

