OCAMLC=ocamlc

all: main.native

main.native: main.ml
	$(OCAMLC) -o main.native main.ml

clean:
	rm -f *.cmo *.cmi *.o *.native
