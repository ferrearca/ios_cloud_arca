//
//  CAServiceFactory.swift
//  intelli-iq-app-ios
//
//  Created by Piotr Suwara on 10/1/2023.
//

import Foundation

@available(iOS 13.0.0, *)
protocol CAServiceFactory {
    func serviceContainer(for cloudRegistrationType: CloudRegistrationType) async -> (any CAServiceContainer)?
}

@available(iOS 13.0.0, *)
class CAAppleServiceFactory: CAServiceFactory {
    func serviceContainer(for cloudRegistrationType: CloudRegistrationType) async -> (CAServiceContainer)? {
        switch cloudRegistrationType {
        case .firebase:
            return await AppleFirebaseServiceContainer()
        }
    }

    func firebaseInstance() async throws -> AppleFirebaseServiceContainer {
        guard let instance = await serviceContainer(for: .firebase) as? AppleFirebaseServiceContainer else {
            throw CAError.instanceCreationFailed
        }

        return instance
    }
}
