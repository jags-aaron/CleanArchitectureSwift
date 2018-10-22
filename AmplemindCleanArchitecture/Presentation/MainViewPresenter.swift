//
//  MainViewPresenter.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

import Foundation

class MainViewPresenter {
    var view: MainView!
    var mUseCase: UseCaseFactory
    
    init(useCase: UseCaseFactory) {
        mUseCase = useCase
    }
    
    func attachView(view: MainView) -> Void {
        self.view = view
    }
    
    func getCountries() -> Void {
        mUseCase.getCountries().execute { (result) in
            switch result {
            case .Left(let error):
                self.showError(error: error)
            case .Right(let countries):
                self.view.showList(countries: countries)
            }
        }
    }
    
    func showError(error: Error) -> Void {
        print(error)
    }
}
