//
//  CountriesRemoteDataSourceImp.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

class CountriesRemoteDataSourceImp: CountriesRemoteSource {
    
    // dummy error
    let apiError: Bool = false
    
    func getCountries() throws -> [Country] {
        var demo = [Country]()
        
        for elem in 1...20 {
            let country = Country()
            country.id = elem
            country.name = "remote name # \(elem)"
            country.flag = "remote flag # \(elem)"
            demo.append(country)
        }
        
        if(apiError){
            throw Failures.serviceError
        }
        
        return demo
    }
}
