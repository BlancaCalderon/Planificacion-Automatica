(define (problem dron-problema)
    (:domain dron-strips)

    (:objects
        d1 - dron
        c1 c2 c3 c4 c5 - caja
        t1 - transportador
        p1 p2 p3 - persona
        n0 n1 n2 n3 n4 - num
        deposito l1 l2 - localizacion
        comida medicina - contenido
    )

    (:init
        (dron-en d1 deposito)
        (caja-en c1 deposito)
        (caja-en c2 deposito)
        (caja-en c3 deposito)
        (caja-en c4 deposito)
        (caja-en c5 deposito)
        (transportador-en t1 deposito)
        (persona-en p1 l1)
        (persona-en p2 l2)

        (persona-necesita p1 comida)
        (persona-necesita p2 comida)
        
        (caja-contiene c1 comida)
        (caja-contiene c2 comida)
        (caja-contiene c3 comida)
        (caja-contiene c4 comida)
        (caja-contiene c5 comida)

        (limite-de t1 n0)

        (siguiente n0 n1)
        (siguiente n1 n2)
        (siguiente n2 n3)
        (siguiente n3 n4)

        (dron-libre d1)

    )
    
    (:goal (and
        (persona-tiene p1 comida)
        (persona-tiene p2 comida)

    ))
)