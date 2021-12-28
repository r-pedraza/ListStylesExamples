//
//  ListPlainView.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import SwiftUI

struct ListPlainView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { section in
                Section(header: HeaderView(title: section.title), footer: Text("Section Footer")) {
                    ForEach(section.items) { item in
                        CellView(item: item)
                    }
                }
            }
        }
        .listStyle(.plain)
        .environmentObject(listViewModel)
    }
}


struct ListPlainView_Previews: PreviewProvider {
    static var previews: some View {
        ListPlainView()
    }
}
