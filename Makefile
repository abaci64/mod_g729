FS_INCLUDES=/usr/local/freeswitch/include/freeswitch
FS_MODULES=/usr/local/freeswitch/mod

PROC?=$(shell uname -m)

CC=gcc 
CFLAGS=-fPIC -O3 -fomit-frame-pointer -fno-exceptions -Wall -std=c99 -pedantic

ifeq (${PROC},x86_64)
	CFLAGS+=-m64 -mtune=generic
else
	CFLAGS+=-m32 -march=i686
endif

INCLUDES=-I/usr/include -Ibcg729/include -I$(FS_INCLUDES)
LDFLAGS=-lm -Wl,-static -Lbcg729/src/.libs -lbcg729 -Wl,-Bdynamic

all : bcg729 mod_g729.c
	cd bcg729 && sh autogen.sh && CFLAGS=-fPIC ./configure && make && cd ..
	$(CC) $(CFLAGS) $(INCLUDES) -c mod_g729.c
	$(CC) $(CFLAGS) $(INCLUDES) -shared -Xlinker -x -o mod_g729.so mod_g729.o $(LDFLAGS)

install:
	/usr/bin/install -c mod_g729.so $(FS_MODULES)/mod_g729.so

clean:
	rm -f *.o *.so *.a *.la; cd bcg729 && make clean; cd ..






