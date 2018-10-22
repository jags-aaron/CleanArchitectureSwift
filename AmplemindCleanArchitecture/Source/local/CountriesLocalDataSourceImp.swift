//
//  CountriesLocalDataSourceImp.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

class CountriesLocalDataSourceImp: CountriesLocalSource {
    
    func getCountries() -> [Country] {
        var demo = [Country]()
        
        for elem in 1...20 {
            let country = Country()
            country.id = elem
            country.name = "local name # \(elem)"
            country.flag = "local flag # \(elem)"
            demo.append(country)
        }
        
        return demo
    }
}
