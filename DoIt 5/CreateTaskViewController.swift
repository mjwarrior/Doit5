//
//  CreateTaskViewController.swift
//  DoIt 5
//
//  Created by Marc Streeter on 10/25/16.
//  Copyright © 2016 Developer Warriors. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
   
   var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: AnyObject) {
    
        let task = Task()
        task.name  = taskNameTextField.text!
        task.important = importantSwitch.isOn
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

    
}
