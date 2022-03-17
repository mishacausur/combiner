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
            TrackScrollView { offset in
                contentOffset = offset.y
            } content: {
                content
            }
            VisualBlur(blurStyle: .systemUltraThinMaterial)
                .opacity(contentOffset < -16 ? 1 : 0)
                .ignoresSafeArea()
                .frame(height: 0)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle("SwiftUI Packages")
        .background(Color("Background 2").edgesIgnoringSafeArea(.all))
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.subheadline)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
            ForEach(Package.packages, id: \.id) { package in
                PackageRow(package: package)
            }
        }
        .padding(.horizontal, 20)
    }
}

struct PackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}
