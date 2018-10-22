//
//  UseCaseFactoryImp.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

class UseCaseFactoryImp: UseCaseFactory {
    
    var mExecutor: Executor
    var mRepository: CountryRepository
    
    init(executor: Executor, repository: CountryRepository) {
        mExecutor = executor
        mRepository = repository
    }
    
    func getCountries() -> GetCountriesUseCase {
        return GetCountriesUseCase(executor: mExecutor, countryRepository: mRepository)
    }
}
