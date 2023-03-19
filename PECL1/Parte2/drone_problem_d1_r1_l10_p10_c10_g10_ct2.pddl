(define (problem drone_problem_d1_r1_l10_p10_c10_g10_ct2)
(:domain dron-strips)
(:objects
	dron1 - dron
	deposito - localizacion
	loc1 - localizacion
	loc2 - localizacion
	loc3 - localizacion
	loc4 - localizacion
	loc5 - localizacion
	loc6 - localizacion
	loc7 - localizacion
	loc8 - localizacion
	loc9 - localizacion
	loc10 - localizacion
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	caja7 - caja
	caja8 - caja
	caja9 - caja
	caja10 - caja
	comida - contenido
	medicina - contenido
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
	persona6 - persona
	persona7 - persona
	persona8 - persona
	persona9 - persona
	persona10 - persona
	transportador1 - transportador
	n0 - num
	n1 - num
	n2 - num
	n3 - num
	n4 - num
)
(:init
	(dron-en dron1 deposito)
	(caja-en caja1 deposito)
	(caja-en caja2 deposito)
	(caja-en caja3 deposito)
	(caja-en caja4 deposito)
	(caja-en caja5 deposito)
	(caja-en caja6 deposito)
	(caja-en caja7 deposito)
	(caja-en caja8 deposito)
	(caja-en caja9 deposito)
	(caja-en caja10 deposito)
	(caja-disponible caja1 )
	(caja-disponible caja2 )
	(caja-disponible caja3 )
	(caja-disponible caja4 )
	(caja-disponible caja5 )
	(caja-disponible caja6 )
	(caja-disponible caja7 )
	(caja-disponible caja8 )
	(caja-disponible caja9 )
	(caja-disponible caja10 )
	(persona-en persona1 loc9)
	(persona-en persona2 loc2)
	(persona-en persona3 loc6)
	(persona-en persona4 loc9)
	(persona-en persona5 loc2)
	(persona-en persona6 loc9)
	(persona-en persona7 loc9)
	(persona-en persona8 loc10)
	(persona-en persona9 loc3)
	(persona-en persona10 loc7)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 comida)
	(caja-contiene caja5 comida)
	(caja-contiene caja6 comida)
	(caja-contiene caja7 comida)
	(caja-contiene caja8 comida)
	(caja-contiene caja9 medicina)
	(caja-contiene caja10 medicina)

	(persona-necesita persona1 comida)
	(persona-necesita persona2 comida)
	(persona-necesita persona3 comida)
	(persona-necesita persona4 comida)
	(persona-necesita persona4 medicina)
	(persona-necesita persona5 comida)
	(persona-necesita persona6 medicina)
	(persona-necesita persona7 comida)
	(persona-necesita persona9 comida)
	(persona-necesita persona10 comida)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)

	(dron-libre dron1)
)
(:goal (and
	(persona-tiene persona1 comida)
	(persona-tiene persona2 comida)
	(persona-tiene persona3 comida)
	(persona-tiene persona4 comida)
	(persona-tiene persona4 medicina)
	(persona-tiene persona5 comida)
	(persona-tiene persona6 medicina)
	(persona-tiene persona7 comida)
	(persona-tiene persona9 comida)
	(persona-tiene persona10 comida)


	))
)
