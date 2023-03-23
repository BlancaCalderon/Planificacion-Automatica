(define (problem drone_problem_d1_r0_l3_p3_c3_g3_ct2)
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
	caja1 - caja
	caja2 - caja
	caja3 - caja
	comida - contenido
	medicina - contenido
	persona1 - persona
	persona2 - persona
	persona3 - persona
)
(:init
	(dron-en dron1 deposito)
	(caja-en caja1 deposito)
	(caja-en caja2 deposito)
	(caja-en caja3 deposito)
	(persona-en persona1 loc1)
	(persona-en persona2 loc1)
	(persona-en persona3 loc2)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 medicina)
	(caja-contiene caja3 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona2 medicina)

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
	(persona-tiene persona2 medicina)


	))
)
