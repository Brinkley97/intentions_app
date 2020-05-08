//
//  SecondViewController.swift
//  toDoList
//
//  Created by Detravious Brinkley on 3/1/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

class addTodoViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBAction func addItem(_ sender: UIButton) {
        if (input.text != "" ){
            list.append(input.text!)
            
            //reset so user can add more text
            input.text = ""

        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

