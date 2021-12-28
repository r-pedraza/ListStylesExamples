//
//  ListExampleApp.swift
//  ItemCollection
//
//  Created by Raul Pedraza on 28/12/21.
//

import Foundation

struct ItemCollection: Identifiable {
    var id: String {
        UUID().uuidString
    }
    
    var sectionOne: [Item] {
        ["Hola", "yo", "soy", "tu", "padre"].map { Item(title: $0) }
    }
    
    var sectionTwo: [Item] {
        ["Hola", "soy", "Edu", "Feliz", "Navidad"].map { Item(title: $0) }
    }
    
    var sections: [[Item]] {
        return [sectionOne, sectionTwo]
    }
}
