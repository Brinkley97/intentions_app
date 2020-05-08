//
//  chosenIntentionViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/11/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

class chosenIntentionViewController: UIViewController {
    
    var intention: String = ""
    
    @IBOutlet weak var showIntention: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showIntention.text = intention
           

       }
    
    


}
