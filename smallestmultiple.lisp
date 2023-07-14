(defun divisiblep (x)
    (loop for i from 1 to 20 do
        (if (/= (mod x i) 0)
            (return nil))

        finally (return T)))

(defparameter smallest-multiple 0)
(defparameter i 20)

(loop while (= smallest-multiple 0) do
    (if (divisiblep i)
        (setf smallest-multiple i))
    (incf i 1))

(print smallest-multiple)