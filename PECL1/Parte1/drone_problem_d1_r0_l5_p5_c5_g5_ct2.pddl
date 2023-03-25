(define (problem drone_problem_d1_r0_l5_p5_c5_g5_ct2)
(:domain dron-strips)
(:objects
	dron1 - dron
	brazo1 - brazo
	brazo2 - brazo
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
	(persona-en persona1 loc1)
	(persona-en persona2 loc4)
	(persona-en persona3 loc2)
	(persona-en persona4 loc5)
	(persona-en persona5 loc4)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 medicina)
	(caja-contiene caja5 medicina)

	(persona-necesita persona1 comida)
	(persona-necesita persona3 comida)
	(persona-necesita persona3 medicina)
	(persona-necesita persona4 comida)
	(persona-necesita persona4 medicina)

	(dron-tiene dron1 brazo1)
	(dron-tiene dron1 brazo2)
	(libre  brazo1)
	(libre  brazo2)
)
(:goal (and
	(persona-tiene persona1 comida)
	(persona-tiene persona3 comida)
	(persona-tiene persona3 medicina)
	(persona-tiene persona4 comida)
	(persona-tiene persona4 medicina)

	(dron-en dron1 deposito)
	))
)
