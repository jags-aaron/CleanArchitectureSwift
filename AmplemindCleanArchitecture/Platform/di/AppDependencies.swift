//
//  AppDependencies.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

import UIKit

class AppDependencies {
    
    var countryRepository: CountryRepository!
    var mainViewPresenter: MainViewPresenter!
    var getCountriesUseCase: GetCountriesUseCase!
    var useCaseFactory: UseCaseFactory!
    var mExecutor: SomeExecutor!
    var localSource: CountriesLocalDataSourceImp!
    var remoteSource: CountriesRemoteDataSourceImp!
    
    init(){
        configureDependencies()
    }
    
    func startDependencies(_ window: UIWindow) {
        let viewController = mainViewController(window)
        viewController.setPresenter(mainViewPresenter)
    }
    
    func mainViewController(_ window: UIWindow) -> ViewController {
        let navigationController = navigationControllerFromWindow(window)
        
        let moviesTableViewController = navigationController.visibleViewController as! ViewController
        
        return moviesTableViewController
    }
    
    func navigationControllerFromWindow(_ window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
    
    func configureDependencies() {
        mExecutor = SomeExecutor()
        localSource = CountriesLocalDataSourceImp()
        remoteSource = CountriesRemoteDataSourceImp()
        countryRepository = CountryRepositoryImp(localSource: localSource, remoteSource: remoteSource)
        useCaseFactory = UseCaseFactoryImp(executor: mExecutor, repository: countryRepository)
        getCountriesUseCase = GetCountriesUseCase(executor: mExecutor, countryRepository: countryRepository)
        mainViewPresenter = MainViewPresenter(useCase: useCaseFactory)
    }
}
