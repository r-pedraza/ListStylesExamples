//
//  Item.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import Foundation

class Item: ObservableObject {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var id: String {
        title
    }
}

extension Item: Hashable, Identifiable {
    static func == (lhs: Item, rhs: Item) -> Bool {
        lhs.id < rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(UUID().hashValue)
    }
}
