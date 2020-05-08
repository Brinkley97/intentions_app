//
//  ViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/4/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    
    var array = ["award", "cup", "greenCheck", "trophy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Timer of first screen
        let timer = Timer.scheduledTimer(
            timeInterval: 2.0,
            target: self,
            selector: #selector(timeToMoveOn),
            userInfo: nil,
            repeats: false)
        
        }

        @objc func timeToMoveOn() {
            self.performSegue(withIdentifier: "toLegend", sender: self)
        }
}

