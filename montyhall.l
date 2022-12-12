(defun monty-hall ()
  "Simulate the Monty Hall problem."
  (let* ((doors '("car" "goat" "goat"))
         (winning-door (nth (random 3) doors))
         (chosen-door (nth (random 3) doors)))
    (format t "The winning door is: ~a~%" winning-door)
    (format t "The chosen door is: ~a~%" chosen-door)
    (when (not (equal winning-door chosen-door))
      (let ((opened-door (first (remove chosen-door doors :test #'equal))))
        (format t "The opened door is: ~a~%" opened-door)
        (format t "Switching to the other door yields: ~a~%"
                (first (remove chosen-door (remove opened-door doors) :test #'equal)))))))
