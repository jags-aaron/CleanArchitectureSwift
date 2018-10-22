//
//  SomeExecutor.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

import UIKit

class SomeExecutor: Executor {
    
    func uiExecute(uiFun: @escaping () -> Void) {
        // Syncronous Process
        DispatchQueue.main.async {
            uiFun()
        }
    }
    
    func asyncExeute(asyncFun: @escaping () -> Void) {
        // Asyncronous Process
        DispatchQueue.global(qos:.userInteractive).async {
            asyncFun()
        }
    }
    
}
