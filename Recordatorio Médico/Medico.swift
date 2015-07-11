//
//  Medico.swift
//  Recordatorio Médico
//
//  Created by saul on 10/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import Foundation

class Medico {
    
    var nombre: String
    var especialidad: String
    var lugar: String

    
    init(nombre: String, lugar: String, especialidad: String) {
        self.nombre = nombre
        self.lugar = lugar
        self.especialidad = especialidad
    }
}