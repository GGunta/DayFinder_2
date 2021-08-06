//
//  AppearanceViewController.swift
//  DayFinder
//
//  Created by gunta.golde on 29/07/2021.
//

import UIKit

class AppearanceViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openSettingsTapped(_ sender: Any) {
        openSettings()
    }
    
    func setLabelText(){
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark{
            text = "Dark Mode is On\nGo to Settings if you would like\nto change to Light Mode."
        }else{
            text = "Light Mode is On\nGo to Settings if you would like\nto change to Dark Mode."
        }
        textLabel.text = text
    }
    
    func openSettings(){
        guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingURL){
            UIApplication.shared.open(settingURL, options: [:]) { success in
                print("sucess: ", success)
            }
        }
    }
}

extension AppearanceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
