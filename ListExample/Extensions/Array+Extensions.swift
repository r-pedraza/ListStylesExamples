//
//  Array+Extensions.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import Foundation

extension Array: Identifiable where Element: Hashable {
    public var id: Int { self.hashValue }
}
