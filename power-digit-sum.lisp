(defun add-all (numbers)
    (let ((total 0))
        (loop for n in numbers summing n into total
        finally (return total))))

(defun number-to-list (num)
    (loop for c across (write-to-string num) collect (digit-char-p c)))

(defun sum-of-digits (num)
    (add-all (number-to-list num)))

(defun digit-sum-of-exponentiated (base power)
    (sum-of-digits (expt base power)))

(print (digit-sum-of-exponentiated 2 1000))