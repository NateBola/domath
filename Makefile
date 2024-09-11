objects = mymath.o domath.o

all: mathmain clean

mathmain: $(objects)
	@echo "Creating the math executable"
	@gcc -o math.exe $(objects)

domath.o: domath.c mymath.h
	@echo "Creating the math object file"
	@gcc -c domath.c -I.

mymath.o: mymath.c mymath.h
	@echo "Creating the mymath library"
	@gcc -c mymath.c -I.

clean:
	@echo "Removing everything but the source files"
	@rm $(objects)

reset:
	@echo "Completely reseting project"
	@rm math.exe
