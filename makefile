BIN := main

CFLAGS := -g -Wall	 -lpthread
CC := g++ 

SRCFILE := $(wildcard *.cpp) 
OBJFILE := $(patsubst %.cpp,%.o,$(SRCFILE))

$(BIN): $(OBJFILE) 
		  $(CC) $(CFLAGS) -o $(BIN) $(OBJFILE) 

%.o:%.cpp
		$(CC) $(CFLAGS)  -c $< -o $@ 


clean :  
		rm -rf $(OBJFILE) ${BIN}
