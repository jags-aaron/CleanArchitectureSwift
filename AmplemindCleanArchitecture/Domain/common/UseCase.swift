//
//  UseCase.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

class UseCase {
    
    var mExecutor: Executor
    
    init(executor: Executor) {
        mExecutor = executor
    }
    
    func uiExecute(uiFun: @escaping () -> Void){
        mExecutor.uiExecute {
            uiFun()
        }
    }
    
    func asyncExecute(asyncFun: @escaping () -> Void){
        mExecutor.asyncExeute {
            asyncFun()
        }
    }
}
