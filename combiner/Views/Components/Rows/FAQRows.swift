//
//  FAQRows.swift
//  combiner
//
//  Created by Misha Causur on 18.03.2022.
//

import SwiftUI

struct FAQRows: View {
    var faq: FAQ
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(faq.question)
                .font(.title3.weight(.bold))
            Text(faq.answer)
            .font(.subheadline)
            .opacity(0.7)
            Divider()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FAQRows_Previews: PreviewProvider {
    static var previews: some View {
        FAQRows(faq: faqData[0])
    }
}
