//
//  GradientIcon.swift
//  combiner
//
//  Created by Misha Causur on 14.02.2022.
//

import SwiftUI

struct GradientIcon: View {
    var iconName: String = "questionmark"
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask {
                Image(systemName: iconName)
            }
    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
