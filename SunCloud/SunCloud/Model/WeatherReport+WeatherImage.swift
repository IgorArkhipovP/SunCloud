//
//  WeatherReport+WeatherImage.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 28.12.2021.
//

import UIKit

extension WeatherReport{
    
    var conditionImage: UIImage {
        
        guard let mainCondition = conditions.first else {return UIImage()}
        
        switch mainCondition.id {
        case 200...299: return UIImage(named: "thunder")!
        case 300...399: return UIImage(named: "drizzle")!
        case 500...599: return UIImage(named: "rain")!
        case 600...699: return UIImage(named: "snow")!
        case 700...799: return UIImage(named: "atmosphere")!
        case 800      : return UIImage(named: "sunny")!
        case 800...899: return UIImage(named: "cloudy")!
        default: return UIImage()
        }
        
    }
    
}
