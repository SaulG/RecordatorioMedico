//
//  PacientForm.swift
//  Recordatorio Médico
//
//  Created by saul on 15/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import UIKit

class PacientForm: UIViewController {
    @IBOutlet weak var accion: UIBarButtonItem!
    
    enum TypeForm {
        case Edit, Add
    }
    
    var typeForm: TypeForm?
    
    
    @IBAction func realizaAccion(sender: UIBarButtonItem) {
    }
   
    @IBAction func cancelar(sender: UIBarButtonItem) {
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
