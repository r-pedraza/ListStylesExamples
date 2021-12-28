//
//  HeaderView.swift
//  ListExample
//
//  Created by Raul Pedraza on 28/12/21.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .labelStyle(.titleOnly)
        }
        .frame(width: .infinity, height: 150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "HeaderView_Previews")
    }
}
