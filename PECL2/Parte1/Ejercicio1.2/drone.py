from pyhop import hop
import timeit
import random

#Operadores
def mover_dron(state, dron, locFrom, locTo):
    if state.dron_en[dron] == locFrom:
        state.dron_en[dron] = locTo
        return state
    else: return False

def coger_caja(state, dron, brazo, caja, contenido, loc):
    if (state.dron_en[dron] == loc) and (state.caja_en[caja] == loc) and (state.caja_contiene[caja] == contenido) and (brazo in state.dron_tiene[dron]) and (state.libre[brazo]):
        state.caja_en.pop(caja)
        state.libre[brazo] = False
        state.brazo_tiene[brazo] = caja
        return state
    else: return False

def dejar_caja(state, dron, brazo, caja, loc):
    if state.dron_en[dron] == loc and state.dron_tiene[dron] == brazo and state.brazo_tiene[brazo] == caja:
        state.brazo_tiene.pop(brazo)
        state.libre[brazo] = True
        state.caja_en[caja] = loc
        return state
    else: return False

def entregar_caja(state, dron, brazo, caja, contenido, loc, persona):
    if state.dron_en[dron] == loc and brazo in state.dron_tiene[dron] and state.persona_en[persona] == loc and state.brazo_tiene[brazo] == caja and state.caja_contiene[caja] == contenido:
        state.persona_necesita.pop(persona)
        state.brazo_tiene.pop(brazo)
        state.caja_contiene.pop(caja)
        state.libre[brazo] = True
        state.persona_tiene[persona] = contenido
        state.caja_en[caja] = loc
        return state
    else: return False

hop.declare_operators(mover_dron, coger_caja, dejar_caja, entregar_caja)
print('')
hop.print_operators(hop.get_operators())

#Metodos
def enviar_todo(state, a):
    clave = list(state.persona_necesita.keys())
    if len(clave) > 0:
        persona = clave[0]
        return [('realizar', persona, state.persona_necesita[persona]), ('enviar', '')]
    elif len(clave) == 0:
        return []
    return False

def realizar_entrega(state, persona, contenido):
    loc = state.persona_en[persona]
    caja = buscar_clave(state.caja_contiene, contenido)
    dron = buscar_clave(state.dron_en, 'deposito')
    brazo = state.dron_tiene['dron1'][0]
    return [('coger_caja', dron, brazo, caja, contenido, 'deposito'), 
     ('mover_dron', dron, 'deposito', loc), 
     ('entregar_caja', dron, brazo, caja, contenido, loc, persona), 
     ('mover_dron', dron, loc, 'deposito')]


hop.declare_methods('enviar', enviar_todo)
hop.declare_methods('realizar', realizar_entrega)
print('')
hop.print_methods(hop.get_methods())

#Funciones auxiliares
def buscar_clave(diccionario, valor):
    for clave in diccionario:
        if diccionario[clave] == valor:
            return clave
        
def crear_cajas(n):
    dic = {}
    for i in range(1, n + 1):
        dic['caja' + str(i)] = 'deposito'
    return dic

def crear_personas(n, loc):
    dic = {}
    for i in range(1, n + 1):
        dic['persona' + str(i)] = 'loc' + str(random.randint(1, loc))
    return dic

def llenar_caja(n, contenido):
    dic = {}
    for i in range(1, n + 1):
        if contenido >= i:
            dic['caja' + str(i)] = 'comida'
        else:
            dic['caja' + str(i)] = 'medicina'
    return dic

def crear_necesidad(n, contenido):
    dic = {}
    for i in range(1, n + 1):
        if contenido >= i:
            dic['persona' + str(i)] = 'comida'
        else:
            dic['persona' + str(i)] = 'medicina'
    return dic

#Init
caja = 5
persona = 5
localizacion = 5
contenido = random.randint(0, caja)

state1 = hop.State('state1')
state1.dron_en = {'dron1':'deposito'}
state1.caja_en = crear_cajas(caja)
state1.persona_en = crear_personas(persona, localizacion)

state1.caja_contiene = llenar_caja(caja, contenido)
state1.persona_necesita = crear_necesidad(persona, contenido)

state1.persona_tiene = {}

state1.dron_tiene = {'dron1':['brazo1', 'brazo2']}
state1.libre = {'brazo1':True, 'brazo2':True}
state1.brazo_tiene = {}

def planificar():
    print(len(hop.plan(state1,
    [('enviar', '')],
    hop.get_operators(),
    hop.get_methods(),
    verbose=3)))

print('Resultado: ')

tiempo = timeit.timeit(planificar, number=1)

print("Tiempo: ", tiempo)
