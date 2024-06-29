(defun number-to-list (num)
    (loop for c across (write-to-string num) collect (digit-char-p c)))

(defun add-all-to-power (numbers power)
    (let ((total 0))
        (loop for n in numbers summing (expt n power) into total
        finally (return total))))

(defun eql-sum-of-pow-of-digits-p (n power)
    (eql (add-all-to-power (number-to-list n) power) n))

(defun find-numbers-eql-sum-of-pow-of-digits (power max)
    (let ((nums nil)) 
        (loop for i from 2 to max
            do (if (eql-sum-of-pow-of-digits-p i power)
                (push i nums))

            finally (return nums))))

(print (add-all-to-power (find-numbers-eql-sum-of-pow-of-digits 5 1000000) 1))