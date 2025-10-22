class Club {
    var property predios

    method mejorPredioPara(persona) {
        return predios.max({predio => predio.caloriasQueQuema(persona)})
    }

    method prediosTranquis(persona) {
        return predios.filter({predio => predio.tieneRutinaTranqui(persona)})
    }

    method rutinasMasExigentes(persona) {
        return predios.map({predio => predio.rutinaMaxima(persona)})
    }
}

class Predio {
    var property rutinas

    method caloriasQueQuema(persona) {
        return rutinas.sum({rutina => rutina.calorias(persona.tiempo())})
    }

    method tieneRutinaTranqui(persona) {
        return rutinas.any({rutina => rutina.calorias(persona.tiempo()) < 500})
    }

    method rutinaMaxima(persona) {
        return rutinas.max({rutina => rutina.calorias(persona.tiempo())})
    }
}