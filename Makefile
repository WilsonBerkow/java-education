PROJECT_ROOT = $(shell pwd)

LIB = $(PROJECT_ROOT)/lib
JAVAFX = $(LIB)/jfxrt.jar

DIST = $(PROJECT_ROOT)/dist
SRC = $(PROJECT_ROOT)/src

BIN = $(PROJECT_ROOT)/bin
BIN_ASK = $(BIN)/ask
BIN_GUI = $(BIN)/gui

JAVAC = javac
CLASSPATH = $(BIN):$(JAVAFX)
JAVA_FLAGS = -g -d $(BIN) -cp $(CLASSPATH)
COMPILE = $(JAVAC) $(JAVA_FLAGS)

.DEFAULT_GOAL := all

all: clean init-bin
	find $(SRC) -name *.java -print | xargs $(COMPILE)

clean:
	rm -rf $(BIN)

dist: distclean init-dist
	jar cf $(DIST)/Gui.jar $(BIN_GUI)
	jar cf $(DIST)/Ask.jar $(BIN_ASK)

distclean:
	rm -rf $(DIST)

init-bin:
	mkdir -p $(BIN)

init-dist:
	mkdir -p $(DIST)

run:
	java -cp $(CLASSPATH) $(class)