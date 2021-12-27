//
//  WeatherReport.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 27.12.2021.
//

import UIKit

struct WeatherReport: Decodable {
    let city: String
    let breakdown: WeatherBreakdown
    let conditions: [WeatherCondition]
    
    private enum CodingKeys: String, CodingKey{
        case city = "name"
        case breakdown = "main"
        case conditions = "weather"
    }
}

struct WeatherBreakdown: Decodable{
    let temperature: Double
    
    private enum CodingKeys: String, CodingKey{
        case temperature = "temp"
    }
}

struct WeatherCondition: Decodable{
    let id: Int
    let description: String
}
