(defmacro top (a-list) 
    `(first (last ,a-list)))

(defun generate-collatz-sequence (start)
    (let ((numbers (list start)))
        (loop while (not (eql (first numbers) 1))
            do (if (eql (mod (first numbers) 2) 0) 
                (push (/ (first numbers) 2) numbers)
                (push (+ (* (first numbers) 3) 1) numbers))
            
            finally (return numbers))))

(defun longest-collatz-under (x)
    (let ((longest-start 0) (longest-length 0) (temp-sequence nil))
        (loop for i from 2 to x
            do (setf temp-sequence (generate-collatz-sequence i))
                (when(> (length temp-sequence) longest-length)
                    (setf longest-start (top temp-sequence))
                    (setf longest-length (length temp-sequence)))
            
            finally (return longest-start))))

(print (longest-collatz-under 1000000))
