//
//  MainVC.swift
//  SunCloud
//
//  Created by Игорь  Архипов on 27.12.2021.
//

import UIKit

class MainVC: UIViewController {
    
    //API KEY: http://api.openweathermap.org/data/2.5/weather?q=Moscow&appid=c46cb767269fcb488c33372509d677a2&units=metric
    
    @IBOutlet var goButton: UIButton!
    @IBOutlet var citySelectTextField: UITextField!
    
    let segueToWeatherVC = "segue.toWeatherVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func buttonGoTapped(_ sender: Any) {
        guard citySelectTextField.text?.isEmpty == false else {return}
        
        var components = URLComponents(string: "http://api.openweathermap.org/data/2.5/weather")
        let cityQuery = URLQueryItem(name: "q", value: citySelectTextField.text)
        let appIdQuery = URLQueryItem(name: "appid", value: "c46cb767269fcb488c33372509d677a2")
        let unitsQuery = URLQueryItem(name: "units", value: "metric")
        
        components?.queryItems = [cityQuery, appIdQuery, unitsQuery]
        
        guard let url = components?.url else {return}
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) {(data, _, error) in
            if let error = error {
                print(error)
            } else if let data = data {
                do {
                                  let json = try JSONSerialization.jsonObject(with: data, options: [])
                                      print(json)
                    let weatherReport = try JSONDecoder().decode(WeatherReport.self, from: data)
                    print(weatherReport)
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: self.segueToWeatherVC, sender: weatherReport)
                    }
                } catch {
                    print(error)
                }
            }
        }
        dataTask.resume()
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let weatherVC = segue.destination as? WeatherVC,
           let weatherReport = sender as? WeatherReport{
            weatherVC.weatherReport = weatherReport
        }
    }
    
}
