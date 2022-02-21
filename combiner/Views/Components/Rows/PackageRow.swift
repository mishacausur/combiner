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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PackageRow_Previews: PreviewProvider {
    static var previews: some View {
        PackageRow(package: Package.packages[0])
    }
}
