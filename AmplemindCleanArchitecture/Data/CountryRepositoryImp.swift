//
//  CountryRepositoryImp.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

class CountryRepositoryImp: CountryRepository {
    
    var isOnline: Bool = true
    
    var localSource: CountriesLocalSource!
    var remoteSource: CountriesRemoteSource!
    
    init(localSource: CountriesLocalSource, remoteSource: CountriesRemoteSource) {
        self.localSource = localSource
        self.remoteSource = remoteSource
    }
    
    func getCountries() -> Either<Error, [Country]> {
        do {
            if(isOnline){
                return Either.Right(try self.remoteSource.getCountries())
            }else{
                return Either.Right(localSource.getCountries())
            }
        } catch {
            return Either.Left(error)
        }
    }
}
