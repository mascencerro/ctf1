CC = gcc
CFLAGS = -I.
DEPS = b64.h
OBJ = buffer.o decode.o encode.o flag.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

flag: $(OBJ)
	$(CC) -s -o $@ $^ $(CFLAGS)

all: flag

clean:
	rm *.o flag