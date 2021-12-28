//
//  ListExampleApp.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import SwiftUI

@main
struct ListExampleApp: App {
    let listViewModel = ListViewModel(itemCollection: ItemCollection())
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(listViewModel)
        }
    }
}
