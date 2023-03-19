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
	(persona-en persona1 loc7)
	(persona-en persona2 loc3)
	(persona-en persona3 loc6)
	(persona-en persona4 loc5)
	(persona-en persona5 loc5)
	(persona-en persona6 loc3)
	(persona-en persona7 loc2)
	(persona-en persona8 loc1)
	(persona-en persona9 loc6)
	(persona-en persona10 loc2)
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

	(persona-necesita persona2 comida)
	(persona-necesita persona2 medicina)
	(persona-necesita persona3 comida)
	(persona-necesita persona3 medicina)
	(persona-necesita persona4 comida)
	(persona-necesita persona5 comida)
	(persona-necesita persona5 medicina)
	(persona-necesita persona6 comida)
	(persona-necesita persona8 comida)
	(persona-necesita persona9 comida)

	(siguiente n0 n1)
	(siguiente n1 n2)
	(siguiente n2 n3)
	(siguiente n3 n4)

	(limite-de transportador1 n0)
	(dron-libre dron1)

	(= (total-cost) 0)

	(= (fly-cost deposito loc1) 183)
	(= (fly-cost deposito loc2) 133)
	(= (fly-cost deposito loc3) 124)
	(= (fly-cost deposito loc4) 235)
	(= (fly-cost deposito loc5) 220)
	(= (fly-cost deposito loc6) 217)
	(= (fly-cost deposito loc7) 183)
	(= (fly-cost deposito loc8) 161)
	(= (fly-cost deposito loc9) 21)
	(= (fly-cost deposito loc10) 104)
	(= (fly-cost loc1 deposito) 183)
	(= (fly-cost loc1 loc2) 97)
	(= (fly-cost loc1 loc3) 91)
	(= (fly-cost loc1 loc4) 54)
	(= (fly-cost loc1 loc5) 62)
	(= (fly-cost loc1 loc6) 79)
	(= (fly-cost loc1 loc7) 28)
	(= (fly-cost loc1 loc8) 106)
	(= (fly-cost loc1 loc9) 166)
	(= (fly-cost loc1 loc10) 85)
	(= (fly-cost loc2 deposito) 133)
	(= (fly-cost loc2 loc1) 97)
	(= (fly-cost loc2 loc3) 124)
	(= (fly-cost loc2 loc4) 130)
	(= (fly-cost loc2 loc5) 101)
	(= (fly-cost loc2 loc6) 169)
	(= (fly-cost loc2 loc7) 78)
	(= (fly-cost loc2 loc8) 30)
	(= (fly-cost loc2 loc9) 126)
	(= (fly-cost loc2 loc10) 92)
	(= (fly-cost loc3 deposito) 124)
	(= (fly-cost loc3 loc1) 91)
	(= (fly-cost loc3 loc2) 124)
	(= (fly-cost loc3 loc4) 143)
	(= (fly-cost loc3 loc5) 150)
	(= (fly-cost loc3 loc6) 95)
	(= (fly-cost loc3 loc7) 109)
	(= (fly-cost loc3 loc8) 150)
	(= (fly-cost loc3 loc9) 104)
	(= (fly-cost loc3 loc10) 35)
	(= (fly-cost loc4 deposito) 235)
	(= (fly-cost loc4 loc1) 54)
	(= (fly-cost loc4 loc2) 130)
	(= (fly-cost loc4 loc3) 143)
	(= (fly-cost loc4 loc5) 42)
	(= (fly-cost loc4 loc6) 98)
	(= (fly-cost loc4 loc7) 55)
	(= (fly-cost loc4 loc8) 128)
	(= (fly-cost loc4 loc9) 219)
	(= (fly-cost loc4 loc10) 139)
	(= (fly-cost loc5 deposito) 220)
	(= (fly-cost loc5 loc1) 62)
	(= (fly-cost loc5 loc2) 101)
	(= (fly-cost loc5 loc3) 150)
	(= (fly-cost loc5 loc4) 42)
	(= (fly-cost loc5 loc6) 130)
	(= (fly-cost loc5 loc7) 42)
	(= (fly-cost loc5 loc8) 92)
	(= (fly-cost loc5 loc9) 207)
	(= (fly-cost loc5 loc10) 136)
	(= (fly-cost loc6 deposito) 217)
	(= (fly-cost loc6 loc1) 79)
	(= (fly-cost loc6 loc2) 169)
	(= (fly-cost loc6 loc3) 95)
	(= (fly-cost loc6 loc4) 98)
	(= (fly-cost loc6 loc5) 130)
	(= (fly-cost loc6 loc7) 106)
	(= (fly-cost loc6 loc8) 183)
	(= (fly-cost loc6 loc9) 197)
	(= (fly-cost loc6 loc10) 115)
	(= (fly-cost loc7 deposito) 183)
	(= (fly-cost loc7 loc1) 28)
	(= (fly-cost loc7 loc2) 78)
	(= (fly-cost loc7 loc3) 109)
	(= (fly-cost loc7 loc4) 55)
	(= (fly-cost loc7 loc5) 42)
	(= (fly-cost loc7 loc6) 106)
	(= (fly-cost loc7 loc8) 82)
	(= (fly-cost loc7 loc9) 169)
	(= (fly-cost loc7 loc10) 95)
	(= (fly-cost loc8 deposito) 161)
	(= (fly-cost loc8 loc1) 106)
	(= (fly-cost loc8 loc2) 30)
	(= (fly-cost loc8 loc3) 150)
	(= (fly-cost loc8 loc4) 128)
	(= (fly-cost loc8 loc5) 92)
	(= (fly-cost loc8 loc6) 183)
	(= (fly-cost loc8 loc7) 82)
	(= (fly-cost loc8 loc9) 155)
	(= (fly-cost loc8 loc10) 119)
	(= (fly-cost loc9 deposito) 21)
	(= (fly-cost loc9 loc1) 166)
	(= (fly-cost loc9 loc2) 126)
	(= (fly-cost loc9 loc3) 104)
	(= (fly-cost loc9 loc4) 219)
	(= (fly-cost loc9 loc5) 207)
	(= (fly-cost loc9 loc6) 197)
	(= (fly-cost loc9 loc7) 169)
	(= (fly-cost loc9 loc8) 155)
	(= (fly-cost loc9 loc10) 85)
	(= (fly-cost loc10 deposito) 104)
	(= (fly-cost loc10 loc1) 85)
	(= (fly-cost loc10 loc2) 92)
	(= (fly-cost loc10 loc3) 35)
	(= (fly-cost loc10 loc4) 139)
	(= (fly-cost loc10 loc5) 136)
	(= (fly-cost loc10 loc6) 115)
	(= (fly-cost loc10 loc7) 95)
	(= (fly-cost loc10 loc8) 119)
	(= (fly-cost loc10 loc9) 85)
)
(:goal (and
	(persona-tiene persona2 comida)
	(persona-tiene persona2 medicina)
	(persona-tiene persona3 comida)
	(persona-tiene persona3 medicina)
	(persona-tiene persona4 comida)
	(persona-tiene persona5 comida)
	(persona-tiene persona5 medicina)
	(persona-tiene persona6 comida)
	(persona-tiene persona8 comida)
	(persona-tiene persona9 comida)


))
(:metric minimize (total-cost))
)
