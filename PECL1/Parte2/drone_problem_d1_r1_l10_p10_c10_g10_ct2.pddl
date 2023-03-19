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
	(persona-en persona2 loc4)
	(persona-en persona3 loc9)
	(persona-en persona4 loc6)
	(persona-en persona5 loc1)
	(persona-en persona6 loc5)
	(persona-en persona7 loc3)
	(persona-en persona8 loc8)
	(persona-en persona9 loc1)
	(persona-en persona10 loc4)
	(transportador-en transportador1 deposito)

	(caja-contiene caja1 comida)
	(caja-contiene caja2 comida)
	(caja-contiene caja3 comida)
	(caja-contiene caja4 comida)
	(caja-contiene caja5 comida)
	(caja-contiene caja6 medicina)
	(caja-contiene caja7 medicina)
	(caja-contiene caja8 medicina)
	(caja-contiene caja9 medicina)
	(caja-contiene caja10 medicina)

	(persona-necesita persona1 medicina)
	(persona-necesita persona2 comida)
	(persona-necesita persona2 medicina)
	(persona-necesita persona3 comida)
	(persona-necesita persona4 medicina)
	(persona-necesita persona5 comida)
	(persona-necesita persona6 medicina)
	(persona-necesita persona8 comida)
	(persona-necesita persona9 comida)
	(persona-necesita persona10 medicina)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)
	(dron-libre dron1)

	(= (total-cost) 0)

	(= (fly-cost loc1 loc2) 35)
	(= (fly-cost loc1 loc3) 99)
	(= (fly-cost loc1 loc4) 153)
	(= (fly-cost loc1 loc5) 48)
	(= (fly-cost loc1 loc6) 63)
	(= (fly-cost loc1 loc7) 130)
	(= (fly-cost loc1 loc8) 148)
	(= (fly-cost loc1 loc9) 179)
	(= (fly-cost loc1 loc10) 108)
	(= (fly-cost loc2 loc1) 35)
	(= (fly-cost loc2 loc3) 69)
	(= (fly-cost loc2 loc4) 176)
	(= (fly-cost loc2 loc5) 82)
	(= (fly-cost loc2 loc6) 98)
	(= (fly-cost loc2 loc7) 119)
	(= (fly-cost loc2 loc8) 150)
	(= (fly-cost loc2 loc9) 181)
	(= (fly-cost loc2 loc10) 136)
	(= (fly-cost loc3 loc1) 99)
	(= (fly-cost loc3 loc2) 69)
	(= (fly-cost loc3 loc4) 197)
	(= (fly-cost loc3 loc5) 147)
	(= (fly-cost loc3 loc6) 155)
	(= (fly-cost loc3 loc7) 83)
	(= (fly-cost loc3 loc8) 133)
	(= (fly-cost loc3 loc9) 163)
	(= (fly-cost loc3 loc10) 174)
	(= (fly-cost loc4 loc1) 153)
	(= (fly-cost loc4 loc2) 176)
	(= (fly-cost loc4 loc3) 197)
	(= (fly-cost loc4 loc5) 147)
	(= (fly-cost loc4 loc6) 118)
	(= (fly-cost loc4 loc7) 145)
	(= (fly-cost loc4 loc8) 102)
	(= (fly-cost loc4 loc9) 107)
	(= (fly-cost loc4 loc10) 57)
	(= (fly-cost loc5 loc1) 48)
	(= (fly-cost loc5 loc2) 82)
	(= (fly-cost loc5 loc3) 147)
	(= (fly-cost loc5 loc4) 147)
	(= (fly-cost loc5 loc6) 31)
	(= (fly-cost loc5 loc7) 166)
	(= (fly-cost loc5 loc8) 172)
	(= (fly-cost loc5 loc9) 200)
	(= (fly-cost loc5 loc10) 92)
	(= (fly-cost loc6 loc1) 63)
	(= (fly-cost loc6 loc2) 98)
	(= (fly-cost loc6 loc3) 155)
	(= (fly-cost loc6 loc4) 118)
	(= (fly-cost loc6 loc5) 31)
	(= (fly-cost loc6 loc7) 159)
	(= (fly-cost loc6 loc8) 155)
	(= (fly-cost loc6 loc9) 180)
	(= (fly-cost loc6 loc10) 62)
	(= (fly-cost loc7 loc1) 130)
	(= (fly-cost loc7 loc2) 119)
	(= (fly-cost loc7 loc3) 83)
	(= (fly-cost loc7 loc4) 145)
	(= (fly-cost loc7 loc5) 166)
	(= (fly-cost loc7 loc6) 159)
	(= (fly-cost loc7 loc8) 55)
	(= (fly-cost loc7 loc9) 82)
	(= (fly-cost loc7 loc10) 146)
	(= (fly-cost loc8 loc1) 148)
	(= (fly-cost loc8 loc2) 150)
	(= (fly-cost loc8 loc3) 133)
	(= (fly-cost loc8 loc4) 102)
	(= (fly-cost loc8 loc5) 172)
	(= (fly-cost loc8 loc6) 155)
	(= (fly-cost loc8 loc7) 55)
	(= (fly-cost loc8 loc9) 32)
	(= (fly-cost loc8 loc10) 122)
	(= (fly-cost loc9 loc1) 179)
	(= (fly-cost loc9 loc2) 181)
	(= (fly-cost loc9 loc3) 163)
	(= (fly-cost loc9 loc4) 107)
	(= (fly-cost loc9 loc5) 200)
	(= (fly-cost loc9 loc6) 180)
	(= (fly-cost loc9 loc7) 82)
	(= (fly-cost loc9 loc8) 32)
	(= (fly-cost loc9 loc10) 139)
	(= (fly-cost loc10 loc1) 108)
	(= (fly-cost loc10 loc2) 136)
	(= (fly-cost loc10 loc3) 174)
	(= (fly-cost loc10 loc4) 57)
	(= (fly-cost loc10 loc5) 92)
	(= (fly-cost loc10 loc6) 62)
	(= (fly-cost loc10 loc7) 146)
	(= (fly-cost loc10 loc8) 122)
	(= (fly-cost loc10 loc9) 139)
)
(:goal (and
	(persona-tiene persona1 medicina)
	(persona-tiene persona2 comida)
	(persona-tiene persona2 medicina)
	(persona-tiene persona3 comida)
	(persona-tiene persona4 medicina)
	(persona-tiene persona5 comida)
	(persona-tiene persona6 medicina)
	(persona-tiene persona8 comida)
	(persona-tiene persona9 comida)
	(persona-tiene persona10 medicina)


))
(:metric minimize (total-cost))
)
