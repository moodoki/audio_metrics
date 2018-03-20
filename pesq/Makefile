CC:=clang
PROG:=pesq
CGLAGS=-Wall -O2

SRCS:= dsp.c pesqdsp.c pesqio.c pesqmain.c pesqmod.c
OBJS:=${SRCS:.c=.o}

all: ${PROG}

${PROG}: ${OBJS}
	${CC} ${OBJS} -o ${PROG}

clean:
	rm -f ${OBJS} ${PROG}

.o.c:
	${CC} ${CFLAGS} -c $<


.PHONY: clean all
