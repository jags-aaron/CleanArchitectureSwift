//
//  CountryRepository.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

protocol CountryRepository {
    func getCountries() -> Either<Error, [Country]>
}
