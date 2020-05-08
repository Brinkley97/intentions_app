//
//  stagesOverallViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/20/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit



class stagesOverallViewController: UIViewController {

    var theIntention: String = ""
    
    @IBOutlet weak var intention: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        intention.text = theIntention
    }
}
