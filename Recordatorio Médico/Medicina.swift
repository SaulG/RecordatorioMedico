//
//  Medicina.swift
//  Recordatorio Médico
//
//  Created by saul on 10/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import Foundation

class Medicina {
    var nombre: String? = nil
    var descripcion: String? = nil
    var precio: Float? = nil
    var fotografia: NSData? = nil
 
    init(nombre: String, descripcion: String?, precio: Float?, fotografia: NSData?){
        self.nombre = nombre
        self.descripcion = descripcion
        self.precio = precio
        self.fotografia = fotografia
    }
}

struct Solido {
    var cantidad: Int?
}

struct Liquido {
    var mililitros: Float?
}

class Pastilla: Medicina {
    var solido = Solido()
}

class Crema {
    var liquido = Liquido()
}

class Jarabe {
    var liquido = Liquido()
}

class Vacuna {
    var liquido = Liquido()
}