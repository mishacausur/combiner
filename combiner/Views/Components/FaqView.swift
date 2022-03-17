//
//  FaqView.swift
//  combiner
//
//  Created by Misha Causur on 19.02.2022.
//

import SwiftUI

struct FaqView: View {
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
        .navigationTitle("FAQ")
        .background(Color("Background 2").edgesIgnoringSafeArea(.all))
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            ForEach(faqData, id: \.id) { faw in
                FAQRows(faq: faw)
            }
            Text("Have any questions?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.subheadline).opacity(0.7)
            Link(destination: URL(string: "mailto:mishacausur@mail.ru")!, label: {
                PrimaryButton()
                    .padding(.top, 16)
            })
        }
        .padding(.horizontal, 20)
    }
}

struct FaqView_Previews: PreviewProvider {
    static var previews: some View {
        FaqView()
    }
}
