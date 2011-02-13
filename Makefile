# Simple ccan/htable using example
# Copyright (C) 2011  anton0xf <anton0xf@gmail.com>
# See LICENCE

default: htable-ex
htable-ex: main.o
	gcc -o htable-ex main.o -L=$(CCAN_HOME) -lccan
main.o: main.c
	gcc -I $(CCAN_HOME) -c main.c
clean:
	rm -rf *.o htable-ex
test: htable-ex
	./test.sh
