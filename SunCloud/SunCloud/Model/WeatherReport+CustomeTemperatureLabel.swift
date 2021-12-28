//
//  WeatherReport+CustomeTemperatureLabel.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 28.12.2021.
//

import UIKit

extension WeatherReport{
    
    var degreesCelcium: String {
        
        let wholeTemperature = Int(breakdown.temperature)
        let degreesCelcium = String(wholeTemperature) + "˚"
        return degreesCelcium
        
    }
}
