//
//  ListViewModel.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import Foundation

class ListViewModel: ObservableObject {
    let items: [ListSection]
    let id = UUID().uuidString

    init(itemCollection: ItemCollection) {
        self.items = itemCollection.sections.enumerated().compactMap { index, items in
            return ListSection(title: "Section \(index)", items: items)
        }
    }
}

extension ListViewModel: Identifiable, Hashable {
    static func == (lhs: ListViewModel, rhs: ListViewModel) -> Bool {
        lhs.id < rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(UUID().hashValue)
    }
}

struct ListSection {
    var title: String
    var items: [Item]
    let id = UUID().uuidString
}

extension ListSection: Hashable, Identifiable {
    static func == (lhs: ListSection, rhs: ListSection) -> Bool {
        lhs.id < rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(UUID().hashValue)
    }
}
