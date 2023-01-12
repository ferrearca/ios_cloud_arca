//
//  FirebaseServiceContainer.swift
//
//  Copyright Realityworks Pty Ltd - Trading as Ferre Arca
//

import Foundation
import FirebaseCore
import FirebaseAuth

@available(iOS 13.0.0, *)
class AppleFirebaseServiceContainer: CAAppleServiceContainer {
    // TODO: Configure so that we pass this data from our own configurator
    // TODO: Configuration data from the
    //var configurator: iOSFirebaseServiceConfiguration
    private let app: FirebaseApp?

    @MainActor
    init() {
        // TODO: Configure so that we pass this data from our own configurator
        FirebaseApp.configure()
        self.app = FirebaseApp.app()
    }

    func signIn(userName: String, password: String) async throws {
        guard let app else {
            throw CAError.instanceNotConfigured
        }

        // TODO: Generate hash token from username and password here and store it if it does not exist.

        // Call the Firebase auth function
        try await Auth.auth(app: app).signIn(withEmail: userName, password: password)
    }

    func signUp(userName: String, password: String) async throws {
        guard let app else {
            throw CAError.instanceNotConfigured
        }

        // Call the firebase create user function
        try await Auth.auth(app: app).createUser(withEmail: userName, password: password)
    }
}
