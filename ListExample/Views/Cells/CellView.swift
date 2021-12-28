//
//  ListExampleApp.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import SwiftUI

struct CellView: View {
    let item: Item
    
    var body: some View {
        VStack {
            Text(item.title)
                .labelStyle(.titleOnly)
        }
        .frame(width: .infinity, height: 80)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let item = Item(title: "SwiftUIView_Previews")
        CellView(item: item)
    }
}
