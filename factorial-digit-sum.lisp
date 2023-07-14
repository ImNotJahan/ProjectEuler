(defun add-all (numbers)
    (let ((total 0))
        (loop for n in numbers summing n into total
        finally (return total))))

(defun number-to-list (num)
    (loop for c across (write-to-string num) collect (digit-char-p c)))

(defun sum-of-digits (num)
    (add-all (number-to-list num)))

(defun factorial (n)
    (let ((total 1)) 
        (loop for i from 2 to n 
            do (setf total (* total i))
            finally (return total))))

(defun digit-sum-of-factorial (n)
    (sum-of-digits (factorial n)))

(print (digit-sum-of-factorial 100))