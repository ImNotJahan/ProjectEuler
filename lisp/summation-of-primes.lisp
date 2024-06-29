;; http://www.sicpdistilled.com/section/1.2.6/

(defun smallest-divisor (n)
  (find-divisor n 2))

(defun square (n)
  (* n n))

(defun find-divisor (n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((dividesp test-divisor n) test-divisor)
        (t (find-divisor n (1+ test-divisor)))))

(defun dividesp (a b)
  (zerop (mod b a)))

(defun primep (n)
  (= n (smallest-divisor n)))

(defun sum-of-primes (n)
    (let ((total 0))
        (loop for i from 2 to n 
            do (if (primep i)
                (incf total i))
            finally (return total))))

(print (sum-of-primes 2000000))