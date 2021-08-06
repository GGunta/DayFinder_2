//
//  showViewController.swift
//  DayFinder
//
//  Created by gunta.golde on 30/07/2021.
//

import UIKit

class showViewController: UIViewController {
    
    @IBOutlet weak var weekInfoLabel: UILabel!
    @IBOutlet weak var weekDecsLabel: UILabel!
    
    var weekInfoText = ""
    var weekDecsText = "Week is 7 days long\n starting from Monday"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weekDecsLabel.text = weekDecsText
        
    
        if !weekInfoText.isEmpty && !weekDecsText.isEmpty{
            weekInfoLabel.text = weekInfoText
            weekDecsLabel.text = weekDecsText
        }
    }
}
