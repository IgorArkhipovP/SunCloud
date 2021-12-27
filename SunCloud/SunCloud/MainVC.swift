//
//  MainVC.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 27.12.2021.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet var goButton: UIButton!
    @IBOutlet var citySelectTextField: UITextField!
    
    let segueToWeatherVC = "segue.toWeatherVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func buttonGoTapped(_ sender: Any) {
        performSegue(withIdentifier: segueToWeatherVC, sender: nil)
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}
    

}
