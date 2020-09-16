//
//  SelectTimeViewController.swift
//  popUp
//
//  Created by Amal Joshy on 14/09/20.
//  Copyright © 2020 Amal Joshy. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func selectTime_click(_ sender: Any) {
        let sb = UIStoryboard.init(name: "PopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as DatePopupViewController
        popup.showTimePicker = true
        popup.delegate = self
        popup.y = 100
        present(popup, animated: true)
    }
    

}


extension SelectTimeViewController: Popupdelegate{
    func popupValueSelected(value: String) {
        timeLabel.text = value
    }
    
    
}
