
;; routines for loading pgplot libraries for cmucl - would like
;; to put this into into pgplot-cmucl, but cmucl barfs about
;; undefined foreign symbols unless libraries get loaded before
;; they are referenced -- (eval-when (load eval compile)...) does
;; not do the trick, alas

(in-package pgplot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package pgplot)

#-linux-raspberry-pi-arm32
(eval-when (:load-toplevel)
  (cffi:define-foreign-library libcpgplot
    (:darwin (:or "libcpgplot.dylib"))
    (:unix (:or "libcpgplot.so")))

  (cffi:use-foreign-library libcpgplot)
  )

#+linux-raspberry-pi-arm32 ;; temporary kludge
(eval-when (:load-toplevel)
   (cffi:load-foreign-library "/usr/local/lib/libpgplot.so")
   (cffi:load-foreign-library "/usr/local/lib/libcpgplot.so"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



