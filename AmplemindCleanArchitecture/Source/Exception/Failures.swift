//
//  Failures.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/22/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

import Foundation

enum Failures: String, Error {
    case serviceError = "An error has occurred with the server"
    case networkError = "The connection has failed"
}
