PROG=	paranoia

DESTDIR	= /usr/local/bin
CC	= gcc
CFLAGS	= -O2

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install: $(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)

clean:
	rm -f $(PROG) core *.o
