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
            GradientIcon(iconName: leftIcon)
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
            Spacer()
            Image(systemName: rightIcon)
                .font(.system(size: 15, weight: .semibold))
                .opacity(0.3)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
//        .padding()
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
