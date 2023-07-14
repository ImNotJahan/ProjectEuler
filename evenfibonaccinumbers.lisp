(defparameter total 0)
(defparameter last-value 1)
(defparameter current-value 2)

(loop while (<= current-value 4000000)
    do (defparameter temp current-value) 
        (setf current-value (+ last-value current-value))
        (setf last-value temp)
        (if (eq(mod last-value 2) 0)
            (incf total last-value)))

(print total)

;; 4613732