//
//  startOfGettingReadyViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/11/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

class startOfGettingReadyViewController: UIViewController {
    
    @IBOutlet weak var Badges: UIButton!
    @IBOutlet weak var progress_bar: UIProgressView!
    
    @IBOutlet weak var theTitle: UILabel!
    @IBOutlet weak var first_step: UIImageView!
    @IBOutlet weak var second_step: UIImageView!
    @IBOutlet weak var third_step: UIImageView!
    @IBOutlet weak var fourth_step: UIImageView!
    
    
   @IBOutlet weak var back: UIButton!
   @IBOutlet weak var exit: UIButton!
    
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var company_name: UILabel!
    @IBOutlet weak var company_motto: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
