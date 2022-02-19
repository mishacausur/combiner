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
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask {
                Image(systemName: iconName).font(.system(size: 17))
            }
            .frame(width: 36, height: 36)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1019607843, green: 0.07058823529, blue: 0.2431372549, alpha: 0.6))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous).stroke().foregroundColor(.white).blendMode(.overlay))
    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
