(let ((x 0))
  (loop for i from 1 to 999
    do (
      if(or (eq (mod i 3) 0) (eq (mod i 5) 0))
        (incf x i)
    )
  )
  
  (print x)
)

;; 233168