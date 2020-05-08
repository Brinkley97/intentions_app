//
//  FirstViewController.swift
//  toDoList
//
//  Created by Detravious Brinkley on 3/1/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

var list = ["Add To Journal"]

class todoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var myTableView: UITableView!
    
    //count items in array and return them
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
    }
    //add items to list array
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        let value = list[indexPath.row]
//        let getValue = UserDefaults.standard.objectIsForced(forKey: value)
        
        cell.textLabel?.text = value
                

        
        return(cell)
    }
    //remove or delete item
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    //append function
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
        

    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

