//
//  ListExampleApp.swift
//  ListCustomType
//
//  Created by Raul Pedraza on 28/12/21.
//
import SwiftUI

enum ListCustomType: CustomStringConvertible, Hashable {
    case automatic
    case plain
    case grouped
    case sideBar
    
    var tag: Int {
        switch self {
        case .automatic:
            return 0
        case .plain:
            return 1
        case .grouped:
            return 2
        case .sideBar:
            return 3
        }
    }
    
    var description: String {
        switch self {
        case .automatic:
            return "automatic"
        case .plain:
            return "plain"
        case .grouped:
            return "grouped"
        case .sideBar:
            return "sideBar"
        }
    }
}
