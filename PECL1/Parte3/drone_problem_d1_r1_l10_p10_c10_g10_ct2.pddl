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
	(persona-en persona1 loc1)
	(persona-en persona2 loc5)
	(persona-en persona3 loc7)
	(persona-en persona4 loc4)
	(persona-en persona5 loc10)
	(persona-en persona6 loc9)
	(persona-en persona7 loc9)
	(persona-en persona8 loc6)
	(persona-en persona9 loc8)
	(persona-en persona10 loc6)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 comida)
	(caja-contiene caja5 comida)
	(caja-contiene caja6 comida)
	(caja-contiene caja7 comida)
	(caja-contiene caja8 medicina)
	(caja-contiene caja9 medicina)
	(caja-contiene caja10 medicina)

	(persona-necesita persona1 comida)
	(persona-necesita persona2 medicina)
	(persona-necesita persona3 comida)
	(persona-necesita persona5 comida)
	(persona-necesita persona7 comida)
	(persona-necesita persona7 medicina)
	(persona-necesita persona8 comida)
	(persona-necesita persona8 medicina)
	(persona-necesita persona9 comida)
	(persona-necesita persona10 comida)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)
	(dron-libre dron1)

	(= (total-cost) 0)

	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 120)
	(= (fly-cost deposito loc2) 217)
	(= (fly-cost deposito loc3) 143)
	(= (fly-cost deposito loc4) 56)
	(= (fly-cost deposito loc5) 163)
	(= (fly-cost deposito loc6) 117)
	(= (fly-cost deposito loc7) 99)
	(= (fly-cost deposito loc8) 165)
	(= (fly-cost deposito loc9) 260)
	(= (fly-cost deposito loc10) 44)
	(= (fly-cost loc1 deposito) 120)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 112)
	(= (fly-cost loc1 loc3) 33)
	(= (fly-cost loc1 loc4) 100)
	(= (fly-cost loc1 loc5) 83)
	(= (fly-cost loc1 loc6) 87)
	(= (fly-cost loc1 loc7) 81)
	(= (fly-cost loc1 loc8) 62)
	(= (fly-cost loc1 loc9) 152)
	(= (fly-cost loc1 loc10) 105)
	(= (fly-cost loc2 deposito) 217)
	(= (fly-cost loc2 loc1) 112)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 114)
	(= (fly-cost loc2 loc4) 176)
	(= (fly-cost loc2 loc5) 63)
	(= (fly-cost loc2 loc6) 121)
	(= (fly-cost loc2 loc7) 132)
	(= (fly-cost loc2 loc8) 53)
	(= (fly-cost loc2 loc9) 44)
	(= (fly-cost loc2 loc10) 186)
	(= (fly-cost loc3 deposito) 143)
	(= (fly-cost loc3 loc1) 33)
	(= (fly-cost loc3 loc2) 114)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 131)
	(= (fly-cost loc3 loc5) 103)
	(= (fly-cost loc3 loc6) 118)
	(= (fly-cost loc3 loc7) 113)
	(= (fly-cost loc3 loc8) 73)
	(= (fly-cost loc3 loc9) 150)
	(= (fly-cost loc3 loc10) 134)
	(= (fly-cost loc4 deposito) 56)
	(= (fly-cost loc4 loc1) 100)
	(= (fly-cost loc4 loc2) 176)
	(= (fly-cost loc4 loc3) 131)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 117)
	(= (fly-cost loc4 loc6) 64)
	(= (fly-cost loc4 loc7) 47)
	(= (fly-cost loc4 loc8) 128)
	(= (fly-cost loc4 loc9) 219)
	(= (fly-cost loc4 loc10) 13)
	(= (fly-cost loc5 deposito) 163)
	(= (fly-cost loc5 loc1) 83)
	(= (fly-cost loc5 loc2) 63)
	(= (fly-cost loc5 loc3) 103)
	(= (fly-cost loc5 loc4) 117)
	(= (fly-cost loc5 loc5) 0)
	(= (fly-cost loc5 loc6) 58)
	(= (fly-cost loc5 loc7) 71)
	(= (fly-cost loc5 loc8) 36)
	(= (fly-cost loc5 loc9) 105)
	(= (fly-cost loc5 loc10) 128)
	(= (fly-cost loc6 deposito) 117)
	(= (fly-cost loc6 loc1) 87)
	(= (fly-cost loc6 loc2) 121)
	(= (fly-cost loc6 loc3) 118)
	(= (fly-cost loc6 loc4) 64)
	(= (fly-cost loc6 loc5) 58)
	(= (fly-cost loc6 loc6) 0)
	(= (fly-cost loc6 loc7) 19)
	(= (fly-cost loc6 loc8) 81)
	(= (fly-cost loc6 loc9) 162)
	(= (fly-cost loc6 loc10) 76)
	(= (fly-cost loc7 deposito) 99)
	(= (fly-cost loc7 loc1) 81)
	(= (fly-cost loc7 loc2) 132)
	(= (fly-cost loc7 loc3) 113)
	(= (fly-cost loc7 loc4) 47)
	(= (fly-cost loc7 loc5) 71)
	(= (fly-cost loc7 loc6) 19)
	(= (fly-cost loc7 loc7) 0)
	(= (fly-cost loc7 loc8) 87)
	(= (fly-cost loc7 loc9) 175)
	(= (fly-cost loc7 loc10) 59)
	(= (fly-cost loc8 deposito) 165)
	(= (fly-cost loc8 loc1) 62)
	(= (fly-cost loc8 loc2) 53)
	(= (fly-cost loc8 loc3) 73)
	(= (fly-cost loc8 loc4) 128)
	(= (fly-cost loc8 loc5) 36)
	(= (fly-cost loc8 loc6) 81)
	(= (fly-cost loc8 loc7) 87)
	(= (fly-cost loc8 loc8) 0)
	(= (fly-cost loc8 loc9) 96)
	(= (fly-cost loc8 loc10) 136)
	(= (fly-cost loc9 deposito) 260)
	(= (fly-cost loc9 loc1) 152)
	(= (fly-cost loc9 loc2) 44)
	(= (fly-cost loc9 loc3) 150)
	(= (fly-cost loc9 loc4) 219)
	(= (fly-cost loc9 loc5) 105)
	(= (fly-cost loc9 loc6) 162)
	(= (fly-cost loc9 loc7) 175)
	(= (fly-cost loc9 loc8) 96)
	(= (fly-cost loc9 loc9) 0)
	(= (fly-cost loc9 loc10) 229)
	(= (fly-cost loc10 deposito) 44)
	(= (fly-cost loc10 loc1) 105)
	(= (fly-cost loc10 loc2) 186)
	(= (fly-cost loc10 loc3) 134)
	(= (fly-cost loc10 loc4) 13)
	(= (fly-cost loc10 loc5) 128)
	(= (fly-cost loc10 loc6) 76)
	(= (fly-cost loc10 loc7) 59)
	(= (fly-cost loc10 loc8) 136)
	(= (fly-cost loc10 loc9) 229)
	(= (fly-cost loc10 loc10) 0)
)
(:goal (and
	(persona-tiene persona1 comida)
	(persona-tiene persona2 medicina)
	(persona-tiene persona3 comida)
	(persona-tiene persona5 comida)
	(persona-tiene persona7 comida)
	(persona-tiene persona7 medicina)
	(persona-tiene persona8 comida)
	(persona-tiene persona8 medicina)
	(persona-tiene persona9 comida)
	(persona-tiene persona10 comida)


))
(:metric minimize (total-cost))
)
