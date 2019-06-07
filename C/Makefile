.PHONY: all clean fclean re

CXX = clang

CXXFLAGS = -Wall -Wextra -Werror

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
DIRTEST = Sullies

COLLEENSRC = Colleen.c
GRACESRC = Grace.c
SULLYSRC = Sully.c

OBJ_COLLEEN = $(COLLEENSRC:.c=.o)
OBJ_GRACE = $(GRACESRC:.c=.o)
OBJ_SULLY = $(SULLYSRC:.c=.o)

all: $(COLLEEN) $(GRACE) $(SULLY) $(DIRTEST)

$(DIRTEST):
	mkdir $(DIRTEST)
	cp $(SULLY) $(DIRTEST)/

$(COLLEEN): $(OBJ_COLLEEN)
	$(CXX) $(CXXFLAGS) $(OBJ_COLLEEN) -o $(COLLEEN)
$(GRACE): $(OBJ_GRACE)
	$(CXX) $(CXXFLAGS) $(OBJ_GRACE) -o $(GRACE)
$(SULLY): $(OBJ_SULLY)
	$(CXX) $(CXXFLAGS) $(OBJ_SULLY) -o $(SULLY)

%.o: %.c
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	@rm -fv $(OBJ_COLLEEN) $(OBJ_GRACE) $(OBJ_SULLY)

fclean: clean
	@rm -rf Sullies
	@rm -fv $(COLLEEN) $(GRACE) $(SULLY)
    
re : fclean all