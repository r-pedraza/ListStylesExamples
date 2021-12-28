//
//  ListSideBarView.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import SwiftUI

struct ListSideBarView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { section in
                Section(header: HeaderView(title: section.title)) {
                    ForEach(section.items) { item in
                        CellView(item: item)
                    }
                }
            }
        }
        .listStyle(.sidebar)
        .environmentObject(listViewModel)
    }
}

struct ListSideBarView_Previews: PreviewProvider {
    static var previews: some View {
        ListSideBarView()
    }
}
