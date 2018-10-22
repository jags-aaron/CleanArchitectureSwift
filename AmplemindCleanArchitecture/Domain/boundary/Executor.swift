//
//  Executor.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//
protocol Executor{
    func uiExecute(uiFun: @escaping () -> Void)
    func asyncExeute(asyncFun: @escaping () -> Void)
}
