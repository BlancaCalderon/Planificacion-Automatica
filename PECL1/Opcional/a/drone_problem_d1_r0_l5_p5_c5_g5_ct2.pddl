(define (problem drone_problem_d1_r0_l5_p5_c5_g5_ct2)
(:domain dron-strips1)
(:objects
	dron1 - dron
	brazo1 - brazo
	brazo2 - brazo
	brazo3 - brazo
	brazo4 - brazo
	deposito - localizacion
	loc1 - localizacion
	loc2 - localizacion
	loc3 - localizacion
	loc4 - localizacion
	loc5 - localizacion
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	comida - contenido
	medicina - contenido
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
)
(:init
	(dron-en dron1 deposito)
	(caja-en caja1 deposito)
	(caja-en caja2 deposito)
	(caja-en caja3 deposito)
	(caja-en caja4 deposito)
	(caja-en caja5 deposito)
	(persona-en persona1 loc4)
	(persona-en persona2 loc2)
	(persona-en persona3 loc3)
	(persona-en persona4 loc4)
	(persona-en persona5 loc5)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 medicina)
	(caja-contiene caja5 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona3 comida)
	(persona-necesita persona3 medicina)
	(persona-necesita persona5 comida)

	(dron-tiene dron1 brazo1)
	(dron-tiene dron1 brazo2)
	(dron-tiene dron1 brazo3)
	(dron-tiene dron1 brazo4)
	(libre  brazo1)
	(libre  brazo2)
	(libre  brazo3)
	(libre  brazo4)
)
(:goal (and
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 comida)
	(persona-tiene persona3 comida)
	(persona-tiene persona3 medicina)
	(persona-tiene persona5 comida)

	(dron-en dron1 deposito)
	))
)
