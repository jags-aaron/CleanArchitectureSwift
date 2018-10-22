//
//  CountriesLocalSource.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

protocol CountriesLocalSource {
    func getCountries() -> [Country]
}
