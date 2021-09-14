lib_dir=/usr/local/lib

clean:
	rm -f *.o *.a
link-header:
	ls -s $$PWD/hello.h /usr/local/include/hello.h
build-demo:
	gcc -o demo demo.c -lhello -lm
build-statis:
	gcc -c hello.c
	ar -cvq libhello.a hello.o
	sudo cp libhello.a /usr/local/lib
build-so:
	gcc hello.c -c -fpic
	gcc -shared -Wl,-soname,libhello.so -o libhello.so.1 hello.o
install-so:
	sudo cp ./libhello.so.1 $(lib_dir)/
	sudo ln -sf $(lib_dir)/libhello.so.1 $(lib_dir)/libhello.so
	sudo ldconfig
