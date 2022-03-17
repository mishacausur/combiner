//
//  PackagesView.swift
//  combiner
//
//  Created by Misha Causur on 19.02.2022.
//

import SwiftUI

struct PackagesView: View {
    @State private var contentOffset = CGFloat(0)
    var body: some View {
        ZStack(alignment: .top) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle("SwiftUI Packages")
    }
}

struct PackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}
