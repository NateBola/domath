objects = mymath.o domath.o

all: mathmain

mathmain: $(objects)
	@echo "Creating the math executable"
	@gcc -o math.exe $(objects)

domath.o: domath.c mymath.h
	@echo "Creating the math object file"
	@gcc -c domath.c -I.

mymath.o: mymath.c mymath.h
	@echo "Creating the mymath library"
	@gcc -c mymath.c -I.