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
	(persona-en persona1 loc1)
	(persona-en persona2 loc1)
	(persona-en persona3 loc1)
	(persona-en persona4 loc2)
	(persona-en persona5 loc2)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 medicina)
	(caja-contiene caja4 medicina)
	(caja-contiene caja5 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona2 medicina)
	(persona-necesita persona3 comida)
	(persona-necesita persona4 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)
	(dron-libre dron1)

	(= (total-cost) 0)

	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 120)
	(= (fly-cost deposito loc2) 117)
	(= (fly-cost deposito loc3) 179)
	(= (fly-cost deposito loc4) 198)
	(= (fly-cost deposito loc5) 113)
	(= (fly-cost loc1 deposito) 120)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 35)
	(= (fly-cost loc1 loc3) 73)
	(= (fly-cost loc1 loc4) 82)
	(= (fly-cost loc1 loc5) 31)
	(= (fly-cost loc2 deposito) 117)
	(= (fly-cost loc2 loc1) 35)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 63)
	(= (fly-cost loc2 loc4) 84)
	(= (fly-cost loc2 loc5) 6)
	(= (fly-cost loc3 deposito) 179)
	(= (fly-cost loc3 loc1) 73)
	(= (fly-cost loc3 loc2) 63)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 33)
	(= (fly-cost loc3 loc5) 67)
	(= (fly-cost loc4 deposito) 198)
	(= (fly-cost loc4 loc1) 82)
	(= (fly-cost loc4 loc2) 84)
	(= (fly-cost loc4 loc3) 33)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 87)
	(= (fly-cost loc5 deposito) 113)
	(= (fly-cost loc5 loc1) 31)
	(= (fly-cost loc5 loc2) 6)
	(= (fly-cost loc5 loc3) 67)
	(= (fly-cost loc5 loc4) 87)
	(= (fly-cost loc5 loc5) 0)
)
(:goal (and
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 comida)
	(persona-tiene persona2 medicina)
	(persona-tiene persona3 comida)
	(persona-tiene persona4 medicina)

	(dron-en dron1 deposito)
))
(:metric minimize (total-cost))
)
