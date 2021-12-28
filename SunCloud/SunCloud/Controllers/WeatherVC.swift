//
//  WeatherVC.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 27.12.2021.
//

import UIKit

class WeatherVC: UIViewController {
    
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var weatherImage: UIImageView!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var descriptionWeatherLabel: UILabel!
    
    var weatherReport: WeatherReport!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let weatherReport = weatherReport else {return}
        
        cityLabel.text = weatherReport.city
        temperatureLabel.text = weatherReport.degreesCelcium
        descriptionWeatherLabel.text = weatherReport.conditions.first?.description
        weatherImage.image = weatherReport.conditionImage
    }


}
