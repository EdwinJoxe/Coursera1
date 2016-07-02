

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = .Apagado
    }
    
}

class autoClass {
    var velocidad : Velocidades          //Coregir lo de iniciar como una instancia de velocidades
    init(velocidad : Velocidades) {
        self.velocidad = velocidad
    }
}


func cambioVelocidad(VelActual actual : Int, velocidadEnCadena : String) -> (Int, String) {
    
    let velocidadParametro = actual
    var resultado : (Int, String)
    
    
    if velocidadParametro == 0 {
        resultado = (20, "Velocidad Baja")
    }
    else if velocidadParametro == 20 {
        resultado = (50, "Velocidad Media")
    }
    else if velocidadParametro == 50 {
        resultado = (120, "Velocidad Alta")
    }
    else {
        resultado = (50, "Velocidad Media")
    }
    return resultado
}

var auto = autoClass(velocidad: Velocidades.Apagado)
print ("\(auto.velocidad.rawValue) , Apagado")

for index in 1...20 {
    let (velPrint, mensajePrint) =    cambioVelocidad(VelActual: auto.velocidad.rawValue,velocidadEnCadena: "")
    if velPrint == 0 {
        auto.velocidad = Velocidades.Apagado
    } else if velPrint == 20 {
        auto.velocidad = Velocidades.VelocidadBaja
    } else if velPrint == 50 {
        auto.velocidad = Velocidades.VelocidadMedia
        
    } else if velPrint == 120 {
        auto.velocidad = Velocidades.VelocidadAlta
    }
    
    
    print ("\(velPrint) , \(mensajePrint)")
    //print (auto.velocidad)
}



