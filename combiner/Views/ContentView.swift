//
//  ContentView.swift
//  combiner
//
//  Created by Misha Causur on 07.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var offsetContent = CGFloat(0)
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                TrackScrollView(offsetChanged: { offset in
                    withAnimation(.easeIn) {
                        offsetContent = offset.y
                    }
                   
                    print("Content offset", offsetContent)
                }) {
                    content
                }
                VisualBlur(blurStyle: .systemUltraThinMaterial)
                    .opacity(offsetContent < -16 ? 1 : 0)
                    .ignoresSafeArea()
                    .frame(height: 0)
                    
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(BackgroundView())
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
//    var content: some View {
//        VStack {
//            MenuRow()
//            divider
//            MenuRow(title: "Swift UI Packages", leftIcon: "square.stack.3d.up.fill")
//            divider
//            MenuRow(title: "YouTube channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
//        }
//    }
    
    var divider: some View {
        Divider().background(Color.white.blendMode(.overlay))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
