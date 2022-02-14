//
//  MenuRow.swift
//  combiner
//
//  Created by Misha Causur on 13.02.2022.
//

import SwiftUI

struct MenuRow: View {
    var title: String = "FAQ / Contacts"
    var leftIcon: String = "questionmark"
    var rightIcon: String = "chevron.right"
    var body: some View {
        HStack(spacing: 12) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
