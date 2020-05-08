//
//  gettingSetViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/19/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

class gettingSetViewController: UIViewController {
    

    @IBOutlet weak var setGoalPickerView: UIPickerView!
    @IBOutlet weak var info: UILabel!

    
    @IBOutlet weak var dueDate: UILabel!

    
    let frequency = [
        ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
        ["days", "weeks", "months"],
        ["1st", "2nd", "3rd", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22","23", "24", "25", "26", "27", "28", "29", "30", "31"],
        ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGoalPickerView.dataSource = self
        setGoalPickerView.delegate = self
                
    }
    
}
extension gettingSetViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return frequency.count
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return frequency[component].count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return frequency[component][row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        info.text = "Goal is set for " + frequency[0][pickerView.selectedRow(inComponent: 0)] + " " + frequency[1][pickerView.selectedRow(inComponent: 1)] + " \nEnd Date: " + frequency[2][pickerView.selectedRow(inComponent: 2)] + " " + frequency[3][pickerView.selectedRow(inComponent: 3)]



    }
}


