CC=C:/msys64/mingw64/bin/g++.exe
SRC_PATH=./
OBJ_PATH=./obj/
DIST_PATH=./dist/
CFLAGS=-c -g -Wno-narrowing -Wfatal-errors -std=c++17 -fdiagnostics-color=always
LD=
INCLUDE=-ID:/ProOther/my_server/uSockets/src

all: obj_mkdir dist_mkdir $(SRC_PATH)main.o
	@echo "    [LD] $(notdir $^)"
	@$(CC) $(OBJ_PATH)main.o -o $(DIST_PATH)my_server.exe $(INCLUDE) $(LD)
	@$(DIST_PATH)my_server.exe
$(SRC_PATH)main.o: $(SRC_PATH)main.cpp
	@echo "    [CP] $(notdir $^)"
	@$(CC) $(CFLAGS) -o $(OBJ_PATH)main.o $(SRC_PATH)main.cpp $(INCLUDE) $(LD)
obj_mkdir:
	@mkdir -p $(OBJ_PATH)
dist_mkdir:
	@mkdir -p $(DIST_PATH)




