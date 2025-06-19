ifeq ($(OS), Windows_NT)
CC=gcc
CFLAGS=-g -Wall -Wextra -pedantic -lraylib -lgdi32 -lwinMM
DEPS = 
OBJ = src/main.o

BDIR=build

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(BDIR)/main: $(OBJ)
	if [ ! -d build ]; then mkdir build; fi
	$(CC) $^ -o $@ $(CFLAGS)

.PHONY: clean

clean:
	rm $(OBJ)
else
CC=gcc
CFLAGS=-g -Wall -Wextra -pedantic -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
DEPS = 
OBJ = src/main.o

BDIR=build

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(BDIR)/main: $(OBJ)
	if [ ! -d build ]; then mkdir build; fi
	$(CC) $^ -o $@ $(CFLAGS)

.PHONY: clean

clean:
	rm $(OBJ)
endif
