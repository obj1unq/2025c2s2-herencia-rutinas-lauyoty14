class Club {
    var property predios = [] 

    method mejorPredioPara(persona) {
        return predios.max({predio => predio.caloriasQueQuema(persona)})
    }

    method prediosTranquis(persona) {
        return predios.filter({predio => predio.caloriasQueQuema(persona) < 500})
    }

    method rutinasMasExigentes(persona) {
        const rutinasExigentes = []
        predios.forEach({predio => rutinasExigentes.add(predio.rutinaMasExigente())})
        return rutinasExigentes
    }
}

class Predio {
    var property rutinas = []

    method caloriasQueQuema(persona) {
        rutinas.sum({rutina => rutina.calorias(persona.tiempo())})
    }
}