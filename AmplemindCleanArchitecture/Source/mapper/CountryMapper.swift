//
//  CountryMapper.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

import Foundation

class CountryMapper {
    
    func transform(countryEntityList: [CountryEntity]) -> [Country] {
        var countryList = [Country]()
        
        for entity in countryEntityList {
            countryList.append(transform(countryEntity: entity))
        }
        
        return countryList
    }
    
    func transform(countryEntity: CountryEntity) -> Country {
        
        let country = Country()
        
        country.id = countryEntity.id
        country.name = countryEntity.name
        country.flag = countryEntity.flag
        
        return country
    }
}
