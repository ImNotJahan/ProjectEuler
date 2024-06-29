(defun primep (x)
    (loop for i from 2 to (- x 1)
        do (if (eql (mod x i) 0)
            (return nil))
        
        finally (return t)))

(defun same-items (list1 list2)
    (and (subsetp list1 list2) (subsetp list2 list1)))

(defun number-to-list (num)
    (loop for c across (write-to-string num) collect (digit-char-p c)))

(defun prime-permutation-p (numbers)
    (let ((last-num nil))
        (loop for n in numbers
            do (when (not (primep n))
                    (return nil))

                (when (not (eql last-num nil))
                    (when (not (same-items last-num (number-to-list n)))
                        (return nil)))
                
                (setf last-num (number-to-list n))
            
            finally (return t))))

(defun find-prime-permutations (start end permutation-length)
    (let ((permutations nil) (temp-permutation nil))
        (loop for i from start to end
            do (loop for increase from 1 to (ceiling (- end i) 2)
                do (setf temp-permutation (list i))
                    (loop for k from 1 to (- permutation-length 1)
                        do (push (+ i (* k increase)) temp-permutation))
                    (if (prime-permutation-p temp-permutation)
                        (push temp-permutation permutations)))
            finally (return permutations))))

(print (find-prime-permutations 1000 9999 3))