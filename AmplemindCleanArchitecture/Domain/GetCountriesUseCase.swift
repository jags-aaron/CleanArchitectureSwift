//
//  GetCountriesUseCase.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

class GetCountriesUseCase: UseCase {
    
    var repository: CountryRepository!
    
    init(executor: Executor, countryRepository: CountryRepository) {
        super.init(executor: executor)
        repository = countryRepository
    }
    
    func execute(onResult: @escaping (Either<Error, [Country]>) -> Void) {
        asyncExecute {
            // Asynchronous process
            let response = self.repository.getCountries()
            self.uiExecute {
                // Synchronous process
                onResult(response)
            }
        }
    }
}
