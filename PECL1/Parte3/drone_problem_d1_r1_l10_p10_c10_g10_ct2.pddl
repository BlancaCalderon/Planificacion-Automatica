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
	(persona-en persona1 loc5)
	(persona-en persona2 loc6)
	(persona-en persona3 loc8)
	(persona-en persona4 loc9)
	(persona-en persona5 loc5)
	(persona-en persona6 loc2)
	(persona-en persona7 loc10)
	(persona-en persona8 loc4)
	(persona-en persona9 loc1)
	(persona-en persona10 loc8)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 comida)
	(caja-contiene caja5 comida)
	(caja-contiene caja6 comida)
	(caja-contiene caja7 medicina)
	(caja-contiene caja8 medicina)
	(caja-contiene caja9 medicina)
	(caja-contiene caja10 medicina)

	(persona-necesita persona1 comida)
	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona3 medicina)
	(persona-necesita persona4 comida)
	(persona-necesita persona4 medicina)
	(persona-necesita persona6 comida)
	(persona-necesita persona8 comida)
	(persona-necesita persona10 comida)
	(persona-necesita persona10 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)
	(dron-libre dron1)

	(= (fly-cost deposito deposito) 0)
	(= (fly-cost deposito loc1) 119)
	(= (fly-cost deposito loc2) 179)
	(= (fly-cost deposito loc3) 128)
	(= (fly-cost deposito loc4) 213)
	(= (fly-cost deposito loc5) 103)
	(= (fly-cost deposito loc6) 203)
	(= (fly-cost deposito loc7) 104)
	(= (fly-cost deposito loc8) 207)
	(= (fly-cost deposito loc9) 130)
	(= (fly-cost deposito loc10) 151)
	(= (fly-cost loc1 deposito) 119)
	(= (fly-cost loc1 loc1) 0)
	(= (fly-cost loc1 loc2) 150)
	(= (fly-cost loc1 loc3) 21)
	(= (fly-cost loc1 loc4) 118)
	(= (fly-cost loc1 loc5) 52)
	(= (fly-cost loc1 loc6) 86)
	(= (fly-cost loc1 loc7) 16)
	(= (fly-cost loc1 loc8) 143)
	(= (fly-cost loc1 loc9) 51)
	(= (fly-cost loc1 loc10) 110)
	(= (fly-cost loc2 deposito) 179)
	(= (fly-cost loc2 loc1) 150)
	(= (fly-cost loc2 loc2) 0)
	(= (fly-cost loc2 loc3) 170)
	(= (fly-cost loc2 loc4) 109)
	(= (fly-cost loc2 loc5) 193)
	(= (fly-cost loc2 loc6) 195)
	(= (fly-cost loc2 loc7) 151)
	(= (fly-cost loc2 loc8) 56)
	(= (fly-cost loc2 loc9) 101)
	(= (fly-cost loc2 loc10) 41)
	(= (fly-cost loc3 deposito) 128)
	(= (fly-cost loc3 loc1) 21)
	(= (fly-cost loc3 loc2) 170)
	(= (fly-cost loc3 loc3) 0)
	(= (fly-cost loc3 loc4) 129)
	(= (fly-cost loc3 loc5) 43)
	(= (fly-cost loc3 loc6) 76)
	(= (fly-cost loc3 loc7) 29)
	(= (fly-cost loc3 loc8) 159)
	(= (fly-cost loc3 loc9) 70)
	(= (fly-cost loc3 loc10) 129)
	(= (fly-cost loc4 deposito) 213)
	(= (fly-cost loc4 loc1) 118)
	(= (fly-cost loc4 loc2) 109)
	(= (fly-cost loc4 loc3) 129)
	(= (fly-cost loc4 loc4) 0)
	(= (fly-cost loc4 loc5) 169)
	(= (fly-cost loc4 loc6) 110)
	(= (fly-cost loc4 loc7) 130)
	(= (fly-cost loc4 loc8) 60)
	(= (fly-cost loc4 loc9) 84)
	(= (fly-cost loc4 loc10) 89)
	(= (fly-cost loc5 deposito) 103)
	(= (fly-cost loc5 loc1) 52)
	(= (fly-cost loc5 loc2) 193)
	(= (fly-cost loc5 loc3) 43)
	(= (fly-cost loc5 loc4) 169)
	(= (fly-cost loc5 loc5) 0)
	(= (fly-cost loc5 loc6) 114)
	(= (fly-cost loc5 loc7) 44)
	(= (fly-cost loc5 loc8) 192)
	(= (fly-cost loc5 loc9) 99)
	(= (fly-cost loc5 loc10) 153)
	(= (fly-cost loc6 deposito) 203)
	(= (fly-cost loc6 loc1) 86)
	(= (fly-cost loc6 loc2) 195)
	(= (fly-cost loc6 loc3) 76)
	(= (fly-cost loc6 loc4) 110)
	(= (fly-cost loc6 loc5) 114)
	(= (fly-cost loc6 loc6) 0)
	(= (fly-cost loc6 loc7) 100)
	(= (fly-cost loc6 loc8) 162)
	(= (fly-cost loc6 loc9) 107)
	(= (fly-cost loc6 loc10) 159)
	(= (fly-cost loc7 deposito) 104)
	(= (fly-cost loc7 loc1) 16)
	(= (fly-cost loc7 loc2) 151)
	(= (fly-cost loc7 loc3) 29)
	(= (fly-cost loc7 loc4) 130)
	(= (fly-cost loc7 loc5) 44)
	(= (fly-cost loc7 loc6) 100)
	(= (fly-cost loc7 loc7) 0)
	(= (fly-cost loc7 loc8) 149)
	(= (fly-cost loc7 loc9) 56)
	(= (fly-cost loc7 loc10) 111)
	(= (fly-cost loc8 deposito) 207)
	(= (fly-cost loc8 loc1) 143)
	(= (fly-cost loc8 loc2) 56)
	(= (fly-cost loc8 loc3) 159)
	(= (fly-cost loc8 loc4) 60)
	(= (fly-cost loc8 loc5) 192)
	(= (fly-cost loc8 loc6) 162)
	(= (fly-cost loc8 loc7) 149)
	(= (fly-cost loc8 loc8) 0)
	(= (fly-cost loc8 loc9) 94)
	(= (fly-cost loc8 loc10) 57)
	(= (fly-cost loc9 deposito) 130)
	(= (fly-cost loc9 loc1) 51)
	(= (fly-cost loc9 loc2) 101)
	(= (fly-cost loc9 loc3) 70)
	(= (fly-cost loc9 loc4) 84)
	(= (fly-cost loc9 loc5) 99)
	(= (fly-cost loc9 loc6) 107)
	(= (fly-cost loc9 loc7) 56)
	(= (fly-cost loc9 loc8) 94)
	(= (fly-cost loc9 loc9) 0)
	(= (fly-cost loc9 loc10) 60)
	(= (fly-cost loc10 deposito) 151)
	(= (fly-cost loc10 loc1) 110)
	(= (fly-cost loc10 loc2) 41)
	(= (fly-cost loc10 loc3) 129)
	(= (fly-cost loc10 loc4) 89)
	(= (fly-cost loc10 loc5) 153)
	(= (fly-cost loc10 loc6) 159)
	(= (fly-cost loc10 loc7) 111)
	(= (fly-cost loc10 loc8) 57)
	(= (fly-cost loc10 loc9) 60)
	(= (fly-cost loc10 loc10) 0)
)
(:goal (and
	(persona-tiene persona1 comida)
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 comida)
	(persona-tiene persona3 medicina)
	(persona-tiene persona4 comida)
	(persona-tiene persona4 medicina)
	(persona-tiene persona6 comida)
	(persona-tiene persona8 comida)
	(persona-tiene persona10 comida)
	(persona-tiene persona10 medicina)


))
)
