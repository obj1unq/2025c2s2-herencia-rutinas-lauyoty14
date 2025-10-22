class Rutina {
    method intensidad() 

    method calorias(tiempo) = 100 * (tiempo - self.descanso(tiempo)) * self.intensidad() 

    method descanso(tiempo)  
}

class Running inherits Rutina {
    var property intensidad 

    override method descanso(tiempo) {
        if (tiempo > 20){
            return 5
        } else {
            return 2
        }
    } 
}

class Maraton inherits Running {
    override method calorias(tiempo) = 2 * super(tiempo) 
}

class Remo inherits Rutina {
    override method intensidad() = 1.3

    override method descanso(tiempo) = tiempo / 5  
}

class RemoDeCompeticion inherits Remo {
    override method intensidad() = 1.7 

    override method descanso(tiempo) = (super(tiempo) - 3).max(2)
}


