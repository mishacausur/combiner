//
//  TrackScrollView.swift
//  combiner
//
//  Created by Misha Causur on 13.02.2022.
//

import SwiftUI

struct TrackScrollView <Content: View>: View {
    let axes: Axis.Set
    let offsetChanges: (CGPoint) -> Void
    let content: Content
    
    init(axes: Axis.Set = .vertical, offsetChanged: @escaping (CGPoint) -> Void = { _ in }, @ViewBuilder content: () -> Content) {
        self.axes = axes
        self.offsetChanges = offsetChanged
        self.content = content()
    }
    
    var body: some View {
        SwiftUI.ScrollView(axes) {
            GeometryReader { proxy in
                Color.clear.preference(key: ScrollOffsetPreferenceKey.self, value: proxy.frame(in: .named("scrollView")).origin)
            }
            .frame(width: 0, height: 0)
            
            content
        }
        .coordinateSpace(name: "scrollView")
        .onPreferenceChange(ScrollOffsetPreferenceKey.self, perform: offsetChanges)
    }
}

private struct ScrollOffsetPreferenceKey: PreferenceKey {
    
    static var defaultValue: CGPoint = .zero
    
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) { }
    
    
}
