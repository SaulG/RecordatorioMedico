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

    override func viewDidLoad() {
        super.viewDidLoad()
        
            tableView.frame         =   CGRectMake(0, 50, 320, 200);
            tableView.delegate      =   self
            tableView.dataSource    =   self
            tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Pacientes"
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.frame = CGRectMake(0, 50, 320, 200);
    }
    
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
}
