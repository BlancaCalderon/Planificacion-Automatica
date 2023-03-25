(define (problem drone_problem_d1_r1_l5_p5_c5_g5_ct2)
(:domain dron-strips)
(:objects
	dron1 - dron
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
	(caja-disponible caja1 )
	(caja-disponible caja2 )
	(caja-disponible caja3 )
	(caja-disponible caja4 )
	(caja-disponible caja5 )
	(persona-en persona1 loc3)
	(persona-en persona2 loc3)
	(persona-en persona3 loc2)
	(persona-en persona4 loc2)
	(persona-en persona5 loc3)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 medicina)
	(caja-contiene caja4 medicina)
	(caja-contiene caja5 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona2 medicina)
	(persona-necesita persona4 comida)
	(persona-necesita persona5 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)
	(dron-libre dron1)

	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 119)
	(= (fly-cost deposito loc2) 207)
	(= (fly-cost deposito loc3) 95)
	(= (fly-cost deposito loc4) 60)
	(= (fly-cost deposito loc5) 103)
	(= (fly-cost loc1 deposito) 119)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 119)
	(= (fly-cost loc1 loc3) 119)
	(= (fly-cost loc1 loc4) 76)
	(= (fly-cost loc1 loc5) 127)
	(= (fly-cost loc2 deposito) 207)
	(= (fly-cost loc2 loc1) 119)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 144)
	(= (fly-cost loc2 loc4) 148)
	(= (fly-cost loc2 loc5) 146)
	(= (fly-cost loc3 deposito) 95)
	(= (fly-cost loc3 loc1) 119)
	(= (fly-cost loc3 loc2) 144)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 56)
	(= (fly-cost loc3 loc5) 10)
	(= (fly-cost loc4 deposito) 60)
	(= (fly-cost loc4 loc1) 76)
	(= (fly-cost loc4 loc2) 148)
	(= (fly-cost loc4 loc3) 56)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 66)
	(= (fly-cost loc5 deposito) 103)
	(= (fly-cost loc5 loc1) 127)
	(= (fly-cost loc5 loc2) 146)
	(= (fly-cost loc5 loc3) 10)
	(= (fly-cost loc5 loc4) 66)
	(= (fly-cost loc5 loc5) 0)
)
(:goal (and
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 comida)
	(persona-tiene persona2 medicina)
	(persona-tiene persona4 comida)
	(persona-tiene persona5 medicina)

	(dron-en dron1 deposito)
))
)
