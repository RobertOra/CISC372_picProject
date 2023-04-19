
image:image.c image.h
	gcc -g image.c -o image -lm
pthreads:pthreads.c pthreads.h
	gcc -g pthreads.c -o pthreads -lm -lpthread
openmp: openmp.c openmp.h
	gcc -g openmp.c -o openmp -lm -fopenmp
clean:
	rm -f image output.png
