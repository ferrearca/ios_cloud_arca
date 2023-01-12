//
//  ServiceContainer.swift
//  intelli-iq-app-ios
//
//  Created by Piotr Suwara on 10/1/2023.
//

import Foundation

// TODO: This will need to be split into an abstraction at some point to support Azure and AWS.

@available(iOS 13.0.0, *)
public protocol CAServiceContainer {
    func signIn(userName: String, password: String) async throws
    func signUp(userName: String, password: String) async throws
}

@available(iOS 13.0.0, *)
public protocol CAAppleServiceContainer: CAServiceContainer {

}
