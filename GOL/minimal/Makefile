SOURCE=test_states
SOURCE_DIR=



all:  clear
	gnat make ${SOURCE}.adb $(SOURCE_DIR)
	rm ${SOURCE}.o
	$(MAKE) run

run:
	./$(SOURCE)

clear:
	- rm $(SOURCE) *.o *.ali
