//
//  DataPopupViewControllerUI.swift
//  popUp
//
//  Created by Amal Joshy on 15/09/20.
//  Copyright © 2020 Amal Joshy. All rights reserved.
//

import Foundation
import UIKit
extension DatePopupViewController{
    func setupPopupView(_ y : CGFloat){
            popupView.frame.origin.x = 60
            popupView.frame.origin.y = y
            popupView.layer.cornerRadius = 5
            popupView.clipsToBounds = true
            popupView.backgroundColor = .gray
       
    }
}
