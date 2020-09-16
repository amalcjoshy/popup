//
//  SecondViewController.swift
//  popUp
//
//  Created by Amal Joshy on 14/09/20.
//  Copyright © 2020 Amal Joshy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "datePopupSegue" {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            // using function
            //popup.onSave = onSave
            // using closure
            popup.onSave = { data in
                self.dateLabel.text = data
            }
        }
    }
    func onSave(_ data:String){
        dateLabel.text = data
    }
}

