//
//  dashboardViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/9/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

class dashboardViewController: UIViewController {
    
    //MARK: LABELS
    @IBOutlet var intentionsButtons: [UIButton]!
    
    var passTheIntention: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextLabel()
        
    }
    
    
    func nextLabel() {
        for (index, button) in intentionsButtons.enumerated(){
            let intention = UserDefaults.standard.object(forKey: "intention\(index)") as? String ?? "+"
            print("\(intention)")
            button.setTitle(intention, for: .normal)
        }
    }
    
    func prepare(segue: UIStoryboardSegue, sender: AnyObject?) {
       if segue.identifier == "stages" {
            nextLabel()
            let vc = segue.destination as! stagesOverallViewController
//            vc.intention = (sender as! UIButton).titleLabel?.text 
       }
    }
}
