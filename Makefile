CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_BASICMATH=basicMath.o
OBJECTS_POWER=power.o
FLAGS=-Wall -g

all:libmyMath.so libmyMath.a  mains maind
mains: $(OBJECTS_MAIN) libmyMath.a
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
libmyMath.a: $(OBJECTS_BASICMATH) 
	$(AR) -rcs libmyMath.a $(OBJECTS_BASICMATH)
	$(AR) -rcs libmyMath.a $(OBJECTS_POWER)
libmyMath.so: $(OBJECTS_BASICMATH) $(OBJECTS_POWER)
	$(CC) -shared -o libmyMath.so $(OBJECTS_BASICMATH) 
	$(CC) -shared -o libmyMath.so $(OBJECTS_POWER)	
main.o: main.c    
	$(CC) $(FLAGS) -c main.c
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind