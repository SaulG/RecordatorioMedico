//
//  PacientesViewController.swift
//  Recordatorio Médico
//
//  Created by saul on 10/07/15.
//  Copyright (c) 2015 SaulGausin. All rights reserved.
//

import UIKit

class PacientesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView = UITableView()
    var items: [String] = []

    
    // - MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add table view
        self.tableView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
      
        //hides the empty cells
        let backgroundColor = UIView(frame: CGRectZero)
        self.tableView.tableFooterView = backgroundColor
        self.tableView.backgroundColor = UIColor.clearColor()
        
        //update the UITableView
        self.updateUITableView()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //set the navigation item title
        self.navigationItem.title = Constantes.NavigationItem.title
    }

    
    // - MARK: Add Paciente
    @IBAction func addPaciente(sender: AnyObject) {
        self.items.append("Test \(self.items.count + 1)")
        self.updateUITableView()
    }
    
    // - MARK: TableView
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }
    
    func updateUITableView() {
        if (self.items.isEmpty) {
            let messageLabel: UILabel = UILabel(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
            messageLabel.text = Constantes.EmptyTableView.message
            messageLabel.textColor = UIColor.lightGrayColor()
            messageLabel.numberOfLines = 0
            messageLabel.textAlignment = NSTextAlignment.Center
            messageLabel.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            
            
            let preferredDescriptor = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
            
            messageLabel.font = UIFont(name: Constantes.EmptyTableView.fontMessage, size: preferredDescriptor.pointSize)
            messageLabel.sizeToFit()
            
            self.tableView.backgroundView = messageLabel
        } else {
            self.tableView.backgroundView = nil
        }
        
        self.tableView.reloadData()
    }
    
    // MARK: - Constants
    private struct Constantes {
        struct NavigationItem {
            static let title:  String = "Pacientes"
        }
        struct EmptyTableView {
            static let fontMessage: String = "Menlo-Regular"
            static let message: String = "El listado de pacientes se encuentra vacío."
        }
    }
}
