//
//  ContentView.swift
//  combiner
//
//  Created by Misha Causur on 07.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Text("Hello, Combine!")
                    .padding()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
