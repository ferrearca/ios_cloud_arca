//
//  Krypt.swift
//  intelli-iq-app-ios
//
//  Created by Piotr Suwara on 10/1/2023.
//

import Foundation
import CryptoKit

// Internal Cryptography Systems for E2E encryption, providing protection post quantum computing.

// Encryptption entry points
struct Krypt {
    // One way hash function
    // https://en.wikipedia.org/wiki/SWIFFT
    @available(macOS 10.15, *)
    @available(iOS 13.0, *)
    static func hash(input: String, salt: String) -> String {
        return ""
    }


    // Key Exchange (Generate Public&Private key pair)
    // https://en.wikipedia.org/wiki/Kyber
    @available(macOS 10.15, *)
    @available(iOS 13.0, *)
    static func keyExchange() {
        let signingKey = P521.Signing.PrivateKey() //Curve25519.Signing.PrivateKey()
        /*:
         Get a data representation of the public key.
         */
        let signingPublicKey = signingKey.publicKey
        let signingPublicKeyData = signingPublicKey.rawRepresentation
        /*:
         Initialize a public key from its raw representation.
         */
        let initializedSigningPublicKey = try! Curve25519.Signing.PublicKey(rawRepresentation: signingPublicKeyData)
        /*:
         Use the private key to generate a signature.
         */
        let dataToSign = "Some sample Data to sign.".data(using: .utf8)!
        let signature = try! signingKey.signature(for: dataToSign)
    }

}
