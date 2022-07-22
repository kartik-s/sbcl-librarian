(in-package :sbcl-librarian)

(defun append-core-to-runtime-and-die (runtime-path)
  (setf (sb-alien:extern-alien "sbcl_runtime" sb-alien:c-string) runtime-path)
  (let ((lib-name (format nil "libsbcl.~a" (asdf/bundle:bundle-pathname-type :shared-library))))
    (sb-ext:save-lisp-and-die lib-name :executable t :callable-exports '())))
