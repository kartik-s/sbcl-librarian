;;;; package.lisp

(defpackage #:sbcl-librarian
  (:use #:cl)
  (:export #:define-handle-type
           #:define-enum-type
           #:define-error-map
           #:define-api
           #:define-library
           #:define-aggregate-library
           #:build-bindings
           #:build-python-bindings
           #:build-core-and-die
           #:append-core-to-runtime-and-die

           #:loader
           #:handles
           #:environment))

