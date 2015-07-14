//
//  MenuTableViewController.swift
//  Recordatorio Médico
//
//  Created by saul on 10/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let opcionesMenu: NSArray = [Constantes.MenuPaciente, Constantes.MenuMedico]

    // MARK: - View Controller Lifecylce
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let backgroundColor = UIView(frame: CGRectZero)
//        self.tableView.backgroundView = backgroundColor
//        self.tableView.backgroundColor = UIColor.clearColor()
    }
    
    //MARK: - TableView
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let filaSeleccionada = opcionesMenu[indexPath.row] as? String {
            switch filaSeleccionada {
            case Constantes.MenuMedico:
                performSegueWithIdentifier(Constantes.Segues.MostrarMedicos, sender: nil)
                break
            case Constantes.MenuPaciente:
                performSegueWithIdentifier(Constantes.Segues.MostrarPacientes, sender: nil)
                break
            default: break
            }
        }
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return opcionesMenu.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = opcionesMenu[indexPath.row] as? String
        return cell
    }
    
    
    //MARK: - Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case Constantes.Segues.MostrarPacientes:
                break
            case Constantes.Segues.MostrarMedicos:
                break
            default: break
            }
        }
    }
    
    // MARK: - Constants
    private struct Constantes {
        static let MenuPaciente = "Pacientes"
        static let MenuMedico = "Médicos"
        struct Segues {
            static let MostrarPacientes: String = "Mostrar Pacientes"
            static let MostrarMedicos: String = "Mostrar Medicos"
        }
    }
    
}
