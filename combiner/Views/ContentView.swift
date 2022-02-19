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
    
    var content: some View {
        VStack {
            VStack {
                MenuRow()
                divider
                MenuRow(title: "Swift UI Packages", leftIcon: "square.stack.3d.up.fill")
                divider
                MenuRow(title: "YouTube channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
            }
            .padding(16)
            .background(Color("Background 1"))
            .background(VisualBlur(blurStyle: .systemUltraThinMaterialDark))
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white).blendMode(.overlay))
            .mask {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
            }
        .padding(.top, 20)
            
            Text("Version 1.00")
                .foregroundColor(.white.opacity(0.6))
                .font(.footnote)
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
        }
        .foregroundColor(.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }
    
    var divider: some View {
        Divider().background(Color.white.blendMode(.overlay))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
