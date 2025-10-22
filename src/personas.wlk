import gimnasia.*

class Persona {
    var property rutinas = []
    var property peso
    method tiempo() 

    method aplicarRutina(rutina) {
        peso -= self.pesoQuePierde(rutina, self.tiempo())
    }

    method pesoQuePierde(rutina,tiempo) = rutina.calorias(tiempo) / self.kilosPorCaloria() 

    method kilosPorCaloria() 
}

class PersonaSedentaria inherits Persona {
    var property tiempo

    override method kilosPorCaloria() = 7000
    override method aplicarRutina(rutina) {
        if (peso > 50){
            super(rutina)
        }
    }
}

class PersonaAtleta inherits Persona {
    var property tiempo = 90 

    override method pesoQuePierde(rutina, unTiempo) = super(rutina,90) - 1

    override method kilosPorCaloria() = 8000

    override method aplicarRutina(rutina){
        if(rutina.calorias() > 10000){
            peso -= self.pesoQuePierde(rutina, tiempo)
        }
    }
}

