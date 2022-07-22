;;;; sbcl-librarian.asd

(asdf:defsystem #:sbcl-librarian
  :description "Tool for generating Lisp bindings."
  :author "Charles Zhang <czhang@hrl.com>"
  ; :license "TODO"
  ; :version "0.0.1"
  :in-order-to ((test-op (test-op "sbcl-librarian/tests")))
  :serial t
  :pathname "src/"
  :components ((:file "package")
               (:file "types")
               (:file "function")
               (:file "api")
               (:file "library")
               (:file "bindings")
               (:file "python-bindings")
               (:file "handles")
               (:file "loader")
               (:file "environment")
               (:file "shrinkwrap")))

(asdf:defsystem #:sbcl-librarian/tests
  :description "Tests for sbcl-librarian."
  :author "Kartik Singh <kssingh@hrl.com>"
  :depends-on (#:sbcl-librarian
               #:fiasco
               )
  :perform (test-op (o s)
                    (uiop:symbol-call ':sbcl-librarian.tests
                                      '#:run-test-suite))
  :serial t
  :pathname "tests/"
  :components ((:file "package")
               (:file "suite")
               (:file "build-tests")
               (:file "python-tests")))
