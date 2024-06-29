(defun divisors-count (n)
    (let ((count 2)) ; 1 & itself

    (loop for i from 2 to (sqrt n)
        do (when (eql (mod n i) 0)
            (incf count 1)
            (if (not (eql (/ n i) i))
                (incf count 1)))
        
        finally (return count))))

(defun nth-triangular-number (n)
    (let ((temp-triangular 1))
        (loop for i from 2 to n
            do (incf temp-triangular i)

            finally (return temp-triangular))))

(defun first-triangular-with-divisors (minimum-divisors &optional (start-from 0)) 
    (let ((triangular 0) (i start-from))
        (loop while (eql triangular 0)
            do (if (> (divisors-count (nth-triangular-number i)) minimum-divisors)
                    (setf triangular (nth-triangular-number i)))
                (incf i)
            finally (return triangular))))

(print (first-triangular-with-divisors 500))