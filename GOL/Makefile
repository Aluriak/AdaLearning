SOURCE=test_games_of_life
SOURCE_DIR=-Istates -Ivisitors


all:  clear
	gnat make ${SOURCE}.adb $(SOURCE_DIR)
	rm ${SOURCE}.o
	$(MAKE) run

run:
	./$(SOURCE)

clear:
	- rm $(SOURCE) *.o *.ali
