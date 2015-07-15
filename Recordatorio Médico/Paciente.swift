//
//  Paciente.swift
//  Recordatorio Médico
//
//  Created by saul on 10/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import Foundation

class Persona {
    var nombre: String
    var fecha_nacimiento: NSDate
    var peso: Int
    var enfermedades: String
    
    init (nombre: String, fecha_nacimiento: NSDate, peso: Int, enfermedades: String) {
        self.nombre = nombre
        self.fecha_nacimiento = fecha_nacimiento
        self.peso = peso
        self.enfermedades = enfermedades
    }
}