CC = gcc
AR = ar
CFLAGS = -c -Wall
SOURCES = prog.c print.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = prog

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -rf *o prog
