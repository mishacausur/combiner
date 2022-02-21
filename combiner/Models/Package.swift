//
//  Package.swift
//  combiner
//
//  Created by Misha Causur on 21.02.2022.
//

import Foundation

struct Package: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    
    static let packages: [Package] = [
        .init(title: "Firebase", description: "https://github.com/firebase/firebase-ios-sdk.git"),
        .init(title: "SDWebImageSwiftUI", description: "https://github.com/SDWebImage/SDWebImageSwiftUI.git"),
        .init(title: "SwiftUITrackableScrollView", description: "https://github.com/maxnatchanon/trackable-scroll-view.git"),
        .init(title: "SwiftUIX", description: "https://github.com/SwiftUIX/SwiftUIX.git")
        ]
}
