(defun self-power-sequence-sum (length)
    (let ((total 0))
        (loop for i from 1 to length summing (expt i i) into total
        finally (return total))))

(print (self-power-sequence-sum 1000))