//
//  WeatherBreakdown.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 28.12.2021.
//

import UIKit

struct WeatherBreakdown: Decodable{
    let temperature: Double
    
    private enum CodingKeys: String, CodingKey{
        case temperature = "temp"
    }
}
