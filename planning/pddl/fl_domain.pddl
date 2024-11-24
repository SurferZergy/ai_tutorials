(define (domain frozenlake)
  (:requirements :strips :typing)
  (:types x y)
  (:predicates
    (at ?x - x ?y - y)     ; the agent is at position (x, y)
    (goal ?x - x ?y - y)    ; the goal is at position (x, y)
    (hole ?x - x ?y - y)    ; there is a hole at position (x, y)
    (free ?x - x ?y - y)    ; the cell is free and not a hole
    (next_x ?p1 ?p2 - x)    ; p2 is next to p1 on x axis
    (next_y ?p1 ?p2 - y))   ; p2 is next to p1 on y axis

  (:action move-down
    :parameters (?x1 - x ?x2 - x ?y - y)
    :precondition (and
      (at ?x1 ?y)
      (next_x ?x1 ?x2)
      (free ?x2 ?y))
    :effect (and
      (not (at ?x1 ?y))
      (at ?x2 ?y)))

  (:action move-up
    :parameters (?x1 - x ?x2 - x ?y - y)
    :precondition (and
      (at ?x1 ?y)
      (next_x ?x2 ?x1)
      (free ?x2 ?y))
    :effect (and
      (not (at ?x1 ?y))
      (at ?x2 ?y)))

  (:action move-right
    :parameters (?x - x ?y1 - y ?y2 - y)
    :precondition (and
      (at ?x ?y1)
      (next_y ?y1 ?y2)
      (free ?x ?y2))
    :effect (and
      (not (at ?x ?y1))
      (at ?x ?y2)))

  (:action move-left
    :parameters (?x - x ?y1 - y ?y2 - y)
    :precondition (and
      (at ?x ?y1)
      (next_y ?y2 ?y1)
      (free ?x ?y2))
    :effect (and
      (not (at ?x ?y1))
      (at ?x ?y2)))
)
