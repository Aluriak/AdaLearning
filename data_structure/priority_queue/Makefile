SOURCE=test_priority_queues
SOURCE_TEST=example_priority_queues
#SOURCE_DIR=-Istates -Ivisitors


all:  clear
	gnat make ${SOURCE}.adb $(SOURCE_DIR)
	rm ${SOURCE}.o
	$(MAKE) run

test:
	gnat make ${SOURCE_TEST}.adb $(SOURCE_DIR)
	rm ${SOURCE_TEST}.o
	$(MAKE) runtest


run:
	./$(SOURCE)
runtest:
	./$(SOURCE_TEST)

clear:
	- rm $(SOURCE) *.o *.ali
