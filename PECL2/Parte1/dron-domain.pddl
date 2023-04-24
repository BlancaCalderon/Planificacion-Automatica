(define (domain dron-strips)
    (:requirements :strips :typing)

    (:types
        dron brazo caja persona localizacion contenido
    )

    (:predicates
        (persona-en ?p - persona ?l - localizacion)
        (caja-en ?c - caja ?l - localizacion)
        (dron-en ?d - dron ?l - localizacion)

        (persona-necesita ?p - persona ?ct - contenido)
        (persona-tiene ?p - persona ?ct - contenido)

        (caja-contiene ?c - caja ?ct - contenido)

        (libre ?b - brazo)
        (brazo-tiene ?b - brazo ?c - caja)
        (dron-tiene ?d - dron ?b - brazo)
    )

    (:action mover-dron
        :parameters (
            ?d - dron 
            ?from ?to - localizacion
        )
        :precondition (and 
            (dron-en ?d ?from)
        )
        :effect (and 
            (not (dron-en ?d ?from))
            (dron-en ?d ?to)
        )
    )

    (:action coger-caja
        :parameters (
            ?d - dron
            ?b - brazo
            ?c - caja
            ?ct - contenido
            ?l - localizacion
        )
        :precondition (and 
            (dron-en ?d ?l)
            (caja-en ?c ?l)
            (caja-contiene ?c ?ct)
            (dron-tiene ?d ?b)
            (libre ?b)
        )
        :effect (and 
            (not (caja-en ?c ?l))
            (not (libre ?b))
            (brazo-tiene ?b ?c)
        )
    )

    (:action dejar-caja
        :parameters (
            ?d - dron
            ?b - brazo
            ?c - caja
            ?l - localizacion
        )
        :precondition (and 
            (dron-en ?d ?l)
            (dron-tiene ?d ?b)
            (brazo-tiene ?b ?c)
        )
        :effect (and 
            (not (brazo-tiene ?b ?c))
            (libre ?b)
            (caja-en ?c ?l)
        )
    )

    (:action entregar-caja
        :parameters (
            ?d - dron
            ?b - brazo
            ?c - caja
            ?ct - contenido
            ?l - localizacion
            ?p - persona
        )
        :precondition (and 
            (dron-en ?d ?l)
            (dron-tiene ?d ?b)
            (persona-en ?p ?l)
            (brazo-tiene ?b ?c)
            (caja-contiene ?c ?ct)
        )
        :effect (and 
            (not (persona-necesita ?p ?ct))
            (not (brazo-tiene ?b ?c))
            (not (caja-contiene ?c ?ct))
            (libre ?b)
            (persona-tiene ?p ?ct)
            (caja-en ?c ?l)
        )
    )
    
    
)