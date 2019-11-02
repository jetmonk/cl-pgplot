# pgplot - front end to Pearson's PGPLOT C/Fortran vintage graphics library

See: http://www.astro.caltech.edu/~tjp/pgplot/

Requires libcpglot.so and libpgplot.so (or .dylib for OSX) to be installed
in standard location accessible to CFFI.

Most functionality of pgplot is supported

## Requires

* waaf-cffi
* ps2pdf


Example usage, a small subset of possible functions.

````

(asdf:load-system "pgplot")

(deparameter *p* (pgplot:open-device :x11))

(pgplot:box *p*)

(pgplot:connect *p* #(0 1) #(0 1))

(pgplot:erase *p*)


;;;;;
(load "pgplot-examples.lisp")
(run-all-demos)



````
