//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0 , VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        
        self = velocidadInicial
    }
}


class Auto {
    
    var velocidad : Velocidades
    
    var acelera : Bool
    
    init (){
       
        velocidad.self = .Apagado
        self.acelera = true
    }
    

    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String){
        
        
            switch velocidad.rawValue{
                case 0:
                velocidad.self = .VelocidadBaja
                acelera = true
                
                case 20:
                    if acelera {
                        velocidad.self = .VelocidadMedia
                    } else {
                        velocidad.self = .Apagado
                    }
            
                case 50:
                    if acelera {
                        velocidad.self = .VelocidadAlta
                    } else {
                        velocidad.self = .VelocidadBaja
                    }
            
                case 120:
                velocidad.self = .VelocidadMedia
                acelera = false
            
                default:
                print ("error")
            }
        
 
        return (velocidad.rawValue, "\(velocidad.self)")
  
    }
 
}

var carro = Auto ()
var estado = (carro.velocidad.rawValue, String(carro.velocidad))

for i in 1...20 {
    
    print ("\(estado.0), \(estado.1)")
    estado = carro.cambioDeVelocidad()
    
}



