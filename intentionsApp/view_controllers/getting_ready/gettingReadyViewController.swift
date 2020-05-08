//
//  gettingReadyViewController.swift
//  intentionsApp
//
//  Created by Detravious Brinkley on 4/9/20.
//  Copyright © 2020 Detravious Brinkley. All rights reserved.
//

import UIKit

var intentionCount = 0

class gettingReadyViewController: UIViewController {
    

    var passIntention: String?

         
    @IBOutlet weak var Badges: UIButton!
    @IBOutlet weak var progress_bar: UIProgressView!
    @IBOutlet weak var showIntention: UILabel!
    @IBOutlet weak var first_step: UIImageView!
        
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var exit: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var company_name: UILabel!
    @IBOutlet weak var company_motto: UILabel!
    
     let dataSource = [
        "Physical Wellbeing",
        "Mental/Emotional Wellbeing",
        "Cultural Identity",
        "Family Relationships",
        "Intimate Relationship",
        "Friends/Social Relationships",
        "Employment/Occupational/Educational Growth",
        "Hobbies/Recreation",
        "Religion/Spirituality",
        "Citizenship/Community-At-Large",
        "Envrironmental Wellness/Sustainability",
        "UNSURE/UNCERTAIN"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is chosenIntentionViewController {
            let sendTo = segue.destination as? chosenIntentionViewController
            sendTo?.intention = passIntention!
        }

        if segue.destination is dashboardViewController {
            let sendTo = segue.destination as? dashboardViewController
        }
    }
    
    override func viewWillDisappear(_ animated: Bool){
        intentionCount += 1
           
       }
}

extension gettingReadyViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    //number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //number of rows in a column of array
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    //show within label
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        UserDefaults.standard.set(dataSource[row], forKey: "intention\(intentionCount)")
        showIntention.text = dataSource[row]
        
        passIntention = showIntention.text
    }
    
    //get intention
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return dataSource[row]
    }
}

