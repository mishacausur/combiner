//
//  PackageRow.swift
//  combiner
//
//  Created by Misha Causur on 21.02.2022.
//

import SwiftUI

struct PackageRow: View {
    @Environment (\.colorScheme) var colorScheme: ColorScheme
    var package: Package
    var body: some View {
        VStack(alignment: .leading) {
            Link(destination: URL(string: package.description)!) {
                LinearGradient(gradient: Gradient(colors: colorScheme == .dark ? [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))] : [.mint]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 20)
                    .mask {
                        Text(package.title)
                            .font(.subheadline.weight(.medium))
                            .textCase(.uppercase)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
            }
            Divider()
        }
    }
}

struct PackageRow_Previews: PreviewProvider {
    static var previews: some View {
        PackageRow(package: Package.packages[0])
    }
}
