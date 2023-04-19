
image:image.c image.h
	gcc -g image.c -o image -lm
image:pthreads.c pthreads.h
	gcc -g pthreads.c -o pthreads -lm -lpthread
clean:
	rm -f image output.png
