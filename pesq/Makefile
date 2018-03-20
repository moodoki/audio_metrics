CC:=clang
PROG:=pesq
CGLAGS=-Wall -O2

SRCS:= dsp.c pesqdsp.c pesqio.c pesqmain.c pesqmod.c
OBJS:=${SRCS:.c=.o}

.PHONY: clean all
all: ${PROG}

${PROG}: ${OBJS} Makefile
	${CC} ${OBJS} -o ${PROG}

clean:
	rm -f ${OBJS} ${PROG}

%.o: %.c Makefile
	${CC} ${CFLAGS} -c $<

