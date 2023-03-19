(define (problem drone_problem_d1_r0_l10_p10_c10_g10_ct2)
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
	(persona-en persona1 loc3)
	(persona-en persona2 loc6)
	(persona-en persona3 loc5)
	(persona-en persona4 loc9)
	(persona-en persona5 loc5)
	(persona-en persona6 loc2)
	(persona-en persona7 loc6)
	(persona-en persona8 loc5)
	(persona-en persona9 loc1)
	(persona-en persona10 loc5)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 comida)
	(caja-contiene caja5 medicina)
	(caja-contiene caja6 medicina)
	(caja-contiene caja7 medicina)
	(caja-contiene caja8 medicina)
	(caja-contiene caja9 medicina)
	(caja-contiene caja10 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona3 medicina)
	(persona-necesita persona5 medicina)
	(persona-necesita persona6 comida)
	(persona-necesita persona7 comida)
	(persona-necesita persona7 medicina)
	(persona-necesita persona8 comida)
	(persona-necesita persona8 medicina)
	(persona-necesita persona9 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(dron-libre dron1)

	(= (total-cost) 0)

	(= (fly-cost loc1 loc2) 109)
	(= (fly-cost loc1 loc3) 73)
	(= (fly-cost loc1 loc4) 82)
	(= (fly-cost loc1 loc5) 87)
	(= (fly-cost loc1 loc6) 100)
	(= (fly-cost loc1 loc7) 24)
	(= (fly-cost loc1 loc8) 26)
	(= (fly-cost loc1 loc9) 114)
	(= (fly-cost loc1 loc10) 18)
	(= (fly-cost loc2 loc1) 109)
	(= (fly-cost loc2 loc3) 180)
	(= (fly-cost loc2 loc4) 132)
	(= (fly-cost loc2 loc5) 182)
	(= (fly-cost loc2 loc6) 132)
	(= (fly-cost loc2 loc7) 86)
	(= (fly-cost loc2 loc8) 133)
	(= (fly-cost loc2 loc9) 214)
	(= (fly-cost loc2 loc10) 100)
	(= (fly-cost loc3 loc1) 73)
	(= (fly-cost loc3 loc2) 180)
	(= (fly-cost loc3 loc4) 97)
	(= (fly-cost loc3 loc5) 79)
	(= (fly-cost loc3 loc6) 119)
	(= (fly-cost loc3 loc7) 96)
	(= (fly-cost loc3 loc8) 54)
	(= (fly-cost loc3 loc9) 49)
	(= (fly-cost loc3 loc10) 80)
	(= (fly-cost loc4 loc1) 82)
	(= (fly-cost loc4 loc2) 132)
	(= (fly-cost loc4 loc3) 97)
	(= (fly-cost loc4 loc5) 156)
	(= (fly-cost loc4 loc6) 23)
	(= (fly-cost loc4 loc7) 86)
	(= (fly-cost loc4 loc8) 93)
	(= (fly-cost loc4 loc9) 105)
	(= (fly-cost loc4 loc10) 67)
	(= (fly-cost loc5 loc1) 87)
	(= (fly-cost loc5 loc2) 182)
	(= (fly-cost loc5 loc3) 79)
	(= (fly-cost loc5 loc4) 156)
	(= (fly-cost loc5 loc6) 177)
	(= (fly-cost loc5 loc7) 104)
	(= (fly-cost loc5 loc8) 65)
	(= (fly-cost loc5 loc9) 123)
	(= (fly-cost loc5 loc10) 104)
	(= (fly-cost loc6 loc1) 100)
	(= (fly-cost loc6 loc2) 132)
	(= (fly-cost loc6 loc3) 119)
	(= (fly-cost loc6 loc4) 23)
	(= (fly-cost loc6 loc5) 177)
	(= (fly-cost loc6 loc7) 100)
	(= (fly-cost loc6 loc8) 114)
	(= (fly-cost loc6 loc9) 124)
	(= (fly-cost loc6 loc10) 84)
	(= (fly-cost loc7 loc1) 24)
	(= (fly-cost loc7 loc2) 86)
	(= (fly-cost loc7 loc3) 96)
	(= (fly-cost loc7 loc4) 86)
	(= (fly-cost loc7 loc5) 104)
	(= (fly-cost loc7 loc6) 100)
	(= (fly-cost loc7 loc8) 48)
	(= (fly-cost loc7 loc9) 135)
	(= (fly-cost loc7 loc10) 22)
	(= (fly-cost loc8 loc1) 26)
	(= (fly-cost loc8 loc2) 133)
	(= (fly-cost loc8 loc3) 54)
	(= (fly-cost loc8 loc4) 93)
	(= (fly-cost loc8 loc5) 65)
	(= (fly-cost loc8 loc6) 114)
	(= (fly-cost loc8 loc7) 48)
	(= (fly-cost loc8 loc9) 99)
	(= (fly-cost loc8 loc10) 41)
	(= (fly-cost loc9 loc1) 114)
	(= (fly-cost loc9 loc2) 214)
	(= (fly-cost loc9 loc3) 49)
	(= (fly-cost loc9 loc4) 105)
	(= (fly-cost loc9 loc5) 123)
	(= (fly-cost loc9 loc6) 124)
	(= (fly-cost loc9 loc7) 135)
	(= (fly-cost loc9 loc8) 99)
	(= (fly-cost loc9 loc10) 116)
	(= (fly-cost loc10 loc1) 18)
	(= (fly-cost loc10 loc2) 100)
	(= (fly-cost loc10 loc3) 80)
	(= (fly-cost loc10 loc4) 67)
	(= (fly-cost loc10 loc5) 104)
	(= (fly-cost loc10 loc6) 84)
	(= (fly-cost loc10 loc7) 22)
	(= (fly-cost loc10 loc8) 41)
	(= (fly-cost loc10 loc9) 116)
)
(:goal (and
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 comida)
	(persona-tiene persona3 medicina)
	(persona-tiene persona5 medicina)
	(persona-tiene persona6 comida)
	(persona-tiene persona7 comida)
	(persona-tiene persona7 medicina)
	(persona-tiene persona8 comida)
	(persona-tiene persona8 medicina)
	(persona-tiene persona9 medicina)


))
(:metric minimize (total-cost))
)
