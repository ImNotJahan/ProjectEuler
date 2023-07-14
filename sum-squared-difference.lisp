(defun sum-square-difference (x) 
    (let ((total 0) (square-temp 0))
        (loop for i from 1 to x do 
            (incf total (expt i 2))
            (incf square-temp i))
            
        (setf square-temp (expt square-temp 2))
        
        (- square-temp total)))

(print (sum-square-difference 100))