(defun pythagorean-triplet-p (a b c)
    (if(and (< a b) (< b c))
        (= (+ (expt a 2) (expt b 2)) (expt c 2))))

(defun product-of-triplet-of-sum (x)
    (block loops 
    (loop for a from 1 to x 
        do (loop for b from (+ a 1) to x
            do (loop for c from (+ b 1) to x
                do (if (eq (+ a (+ b c)) x)
                    (if (pythagorean-triplet-p a b c)
                        (return-from loops (* a (* b c)))))))))) ; that's a lot of parenthesis 

(print (product-of-triplet-of-sum 1000))