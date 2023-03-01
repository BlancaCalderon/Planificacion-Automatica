(define (domain dron-strips)
    (:requirements :strips :typing)

    (:types
        dron transportador caja persona localizacion contenido num
    )

    (:predicates
        (persona-en ?p - persona ?l - localizacion)
        (caja-en ?c - caja ?l - localizacion)
        (dron-en ?d - dron ?l - localizacion)
        (transportador-en ?t - transportador ?l - localizacion)

        (persona-necesita ?p - persona ?ct - contenido)
        (persona-tiene ?p - persona ?ct - contenido)

        (caja-contiene ?c - caja ?ct - contenido)

        (dron-tiene-transportador ?d - dron ?t - transportador)
        (dron-tiene-caja ?d - dron ?c - caja)
        (dron-libre ?d)
        (siguiente ?n1 ?n2 - num)
        (transportador-contiene ?t - transportador ?c - caja)
        (limite-de ?t - transportador ?n - num)
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
            ?c - caja
            ?ct - contenido
            ?l - localizacion
        )
        :precondition (and 
            (dron-en ?d ?l)
            (caja-en ?c ?l)
            (caja-contiene ?c ?ct)
            (dron-libre ?d)
        )
        :effect (and 
            (not (caja-en ?c ?l))
            (not (dron-libre ?d))
            (dron-tiene-caja ?d ?c)
        )
    )

    (:action dejar-caja
        :parameters (
            ?d - dron
            ?c - caja
            ?l - localizacion
        )
        :precondition (and 
            (dron-en ?d ?l)
            (dron-tiene-caja ?d ?c)
        )
        :effect (and 
            (not (dron-tiene-caja ?d ?c))
            (caja-en ?c ?l)
            (dron-libre ?d)
        )
    )

    (:action entregar-caja
        :parameters (
            ?d - dron
            ?c - caja
            ?ct - contenido
            ?l - localizacion
            ?p - persona
        )
        :precondition (and 
            (persona-en ?p ?l)
            (dron-en ?d ?l)
            (dron-tiene-caja ?d ?c)
            (persona-necesita ?p ?ct)
            (caja-contiene ?c ?ct)
        )
        :effect (and 
            (not (persona-necesita ?p ?ct))
            (not (caja-contiene ?c ?ct))
            (not (dron-tiene-caja ?d ?c))
            (dron-libre ?d)
            (persona-tiene ?p ?ct)
            (caja-en ?c ?l)
        )
    )

    (:action poner-caja-en-transportador
        :parameters (
            ?t - transportador
            ?c - caja
            ?d - dron
            ?l - localizacion
            ?nini ?nfin - num
        )
        :precondition (and 
            (transportador-en ?t ?l)
            (dron-en ?d ?l)

            (dron-tiene-caja ?d ?c)
            (limite-de ?t ?nini)
            (siguiente ?nini ?nfin)
        )
        :effect (and 
            (not (dron-tiene-caja ?d ?c))
            (not (limite-de ?t ?nini))
            (transportador-contiene ?t ?c)
            (limite-de ?t ?nfin)
            (dron-libre ?d)
        )
    )

    (:action coger-caja-del-transportador
        :parameters (
            ?t - transportador
            ?c - caja
            ?d - dron
            ?l - localizacion
            ?nact ?nant - num 
        )
        :precondition (and 
            (transportador-en ?t ?l)
            (dron-en ?d ?l)

            (transportador-contiene ?t ?c)
            (limite-de ?t ?nact)
            (siguiente ?nant ?nact)
            (dron-libre ?d)
        )
        :effect (and 
            (not (transportador-contiene ?t ?c))
            (not (limite-de ?t ?nact))
            (not (dron-libre ?d))
            (dron-tiene-caja ?d ?c)
            (limite-de ?t ?nant)
        )
    )
    
    (:action coger-transportador
        :parameters (
            ?t - transportador
            ?d - dron
            ?l - localizacion
        )
        :precondition (and 
            (transportador-en ?t ?l)
            (dron-en ?d ?l)

            (dron-libre ?d)
        )
        :effect (and 
            (not (transportador-en ?t ?l))
            (not (dron-libre ?d))

            (dron-tiene-transportador ?d ?t)
        )
    )

    (:action dejar-transportador
        :parameters (
            ?t - transportador
            ?d - dron
            ?l - localizacion
        )
        :precondition (and 
            (dron-en ?d ?l)
            (dron-tiene-transportador ?d ?t)
        )
        :effect (and 
            (not (dron-tiene-transportador ?d ?t))
            (dron-libre ?d)
            (transportador-en ?t ?l)
        )
    )
    
)