//
//  CloudArca.swift
//
//  Copyright Realityworks Pty Ltd - Trading as Ferre Arca
//

import Foundation

@available(iOS 13.0.0, *)
protocol CloudArca {
    associatedtype ArcaCloudFactory: CAServiceFactory

    static var factory: ArcaCloudFactory { get }
}

@available(iOS 13.0.0, *)
struct AppleCloudArca: CloudArca {
    typealias ArcaCloudFactory = CAAppleServiceFactory
    
    static let factory: CAAppleServiceFactory = .init()
}
