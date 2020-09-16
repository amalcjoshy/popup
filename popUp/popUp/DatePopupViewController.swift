//
//  DatePopupViewController.swift
//  popUp
//
//  Created by Amal Joshy on 14/09/20.
//  Copyright © 2020 Amal Joshy. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var popupView: UIView!
    var y: CGFloat = 300
    
    var showTimePicker = false
    var onSave: ((_ data:String) -> ())?
    var delegate: Popupdelegate?
    var formattedDate : String{
        get {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: datePicker.date)
        }
    }
    var formattedTime : String{
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        if showTimePicker{
            titleLabel.text = "Select Time"
            saveButton.setTitle("Save Time", for: .normal)
            datePicker.datePickerMode = .time
        }
    }
    
    func setupUI(){
        setupPopupView(y)
    }
    
    @IBAction func saveDate_click(_ sender: Any) {
        
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        if showTimePicker{
            onSave?(formattedTime)
            delegate?.popupValueSelected(value: formattedTime)
        } else{
            onSave?(formattedDate)
        }
        dismiss(animated: true)
    }
    
}
