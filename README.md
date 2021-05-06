# gnugo-shared

Build GNU Go as a shared library so that objects can be loaded in other runtimes. I needed this for making a Go game application in Racket. Racket's ffi only allows shared objects, which makes sense since we write our code in their runtime environment.

# Installation

Installation should be straightforward, using cmake. 

```
$ git clone https://github.com/Vrroom/gnugo-shared.git
$ cd gnugo-shared/Code/Build
$ cmake .
$ make 
```

The shared libraries are kept in `gnugo-shared/Code/Build/Output/lib`.
