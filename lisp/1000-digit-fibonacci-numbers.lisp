(defun nth-fibonacci(n)
    (let ((num 1) (last 1) (2nd-last 1))
        (loop for i from 3 to n
        do (setf 2nd-last last)
            (setf last num)
            (setf num (+ last 2nd-last))
        
        finally (return num))))

(defun fibonacci-with-min (min)
    (let ((i 2))
        (loop 
            (when (> (nth-fibonacci i) min) 
                (return i))
            (incf i))))

(print (fibonacci-with-min (expt 10 999)))