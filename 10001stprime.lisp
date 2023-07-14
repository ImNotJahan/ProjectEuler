(defun primep (x)
    (loop for i from 2 to (- x 1)
        do (if (eq (mod x i) 0)
            (return nil))
        
        finally (return T)))

(defun nth-prime (x)
    (let ((recent-prime 2) (prime-index 1) (i 2))
        (loop while (< prime-index x) do 
            (incf i 1)
            (if (primep i) 
                (progn 
                    (incf prime-index 1)
                    (setf recent-prime i)))
            finally (return recent-prime))))

(print (nth-prime 10001))