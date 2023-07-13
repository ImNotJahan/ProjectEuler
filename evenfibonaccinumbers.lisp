(defparameter total 0)
(defparameter lastVal 1)
(defparameter currentVal 2)

(loop while (<= currentVal 4000000)
    do (defparameter temp currentVal) 
        (setf currentVal (+ lastVal currentVal))
        (setf lastVal temp)
        (if (eq(mod lastVal 2) 0)
            (incf total lastVal)))

(print total)

;; 4613732