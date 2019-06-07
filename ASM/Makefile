.PHONY: all clean fclean re

NASM = nasm -f macho64
LD = ld -macosx_version_min 10.8.0 -lSystem

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
DIRTEST = Sullies

COLLEENSRC = Colleen.s
GRACESRC = Grace.s
SULLYSRC = Sully.s

OBJ_COLLEEN = $(COLLEENSRC:.s=.o)
OBJ_GRACE = $(GRACESRC:.s=.o)
OBJ_SULLY = $(SULLYSRC:.s=.o)

all: $(GRACE) $(COLLEEN) $(SULLY) $(DIRTEST)

$(DIRTEST):
	mkdir $(DIRTEST)
	cp $(SULLY) $(DIRTEST)/

$(COLLEEN):
	$(NASM) $(COLLEENSRC)
	$(LD) -o $(COLLEEN) $(OBJ_COLLEEN)
$(GRACE):
	$(NASM) $(GRACESRC)
	$(LD) -o $(GRACE) $(OBJ_GRACE)
$(OBJ_SULLY):
	$(NASM) $(SULLYSRC)
	$(LD) -o $(SULLY) $(OBJ_SULLY)

clean:
	@rm -fv $(OBJ_GRACE) $(OBJ_COLLEEN) $(OBJ_SULLY)

fclean: clean
	@rm -fv $(GRACE) $(COLLEEN) $(SULLY)
	@rm -rf Sullies
    
re : fclean all