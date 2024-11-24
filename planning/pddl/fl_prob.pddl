(define (problem frozenlake-problem)
  (:domain frozenlake)
  (:objects
    pos_x_0 pos_x_1 pos_x_2 pos_x_3 - x  ; grid columns
    pos_y_0 pos_y_1 pos_y_2 pos_y_3 - y) ; grid rows
  (:init
    (at pos_x_0 pos_y_0) ; Start position
    (goal pos_x_3 pos_y_3) ; Goal position

    ; Adjacent positions on x axis
    (next_x pos_x_0 pos_x_1)
    (next_x pos_x_1 pos_x_2)
    (next_x pos_x_2 pos_x_3)

    ; Adjacent positions on y axis
    (next_y pos_y_0 pos_y_1)
    (next_y pos_y_1 pos_y_2)
    (next_y pos_y_2 pos_y_3)

    ; Free tiles (not holes)
    (free pos_x_0 pos_y_0) ; Start position
    (free pos_x_0 pos_y_1) (free pos_x_0 pos_y_2) (free pos_x_0 pos_y_3)
    (free pos_x_1 pos_y_0) (free pos_x_2 pos_y_0) (free pos_x_2 pos_y_1) (free pos_x_2 pos_y_2)
    (free pos_x_3 pos_y_1) (free pos_x_3 pos_y_2) (free pos_x_3 pos_y_3) ; Goal position

    ; Holes
    (hole pos_x_1 pos_y_1) (hole pos_x_1 pos_y_3) (hole pos_x_2 pos_y_3) (hole pos_x_3 pos_y_0))
  (:goal (and (at pos_x_3 pos_y_3)))
  
)
