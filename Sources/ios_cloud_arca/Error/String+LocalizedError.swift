//
//  File.swift
//  
//
//  Created by Piotr Suwara on 12/1/2023.
//

import Foundation

// Easily convert strings into errors

extension String: LocalizedError {
    public var errorDescription: String? {
        return self
    }
}
