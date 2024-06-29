(defun palindromep (x)
    (let ((str (write-to-string x)) 
        (first-half "") 
        (second-half ""))

        (loop for i from 0 to (- (floor (length str) 2) 1)
            do (setq first-half (concatenate 'string first-half (list (char str i)))))

        (loop for i from 0 to (- (floor (length str) 2) 1)
            do (setq second-half (concatenate 'string second-half (list (char str (- (- (length str) 1) i))))))

        (string= first-half second-half)))


(defparameter largest-palindrome 0)

(loop for i from 0 to 899 do 
    (loop for k from 0 to 899 do 
        (if (> (* (- 999 i) (- 999 k)) largest-palindrome)
            (if (palindromep (* (- 999 i) (- 999 k)))
                (setf largest-palindrome (* (- 999 i) (- 999 k)))))))

(print largest-palindrome)