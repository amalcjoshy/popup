//
//  FirstViewController.swift
//  popUp
//
//  Created by Amal Joshy on 14/09/20.
//  Copyright © 2020 Amal Joshy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    var observer : NSObjectProtocol?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
          observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main) { (Notification) in
                  let dateVc = Notification.object as! DatePopupViewController
                  self.dateLabel.text = dateVc.formattedDate
              }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let observer = observer{
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "datePopupSegue" {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }


}

