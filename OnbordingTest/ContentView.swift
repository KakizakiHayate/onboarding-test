//
//  ContentView.swift
//  OnbordingTest
//
//  Created by 柿崎 on 2024/07/28.
//

import SwiftUI

struct ContentView: View {
    let onboarding: [OnboardingData] = onboardingData

    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .cyan
        UIPageControl.appearance().pageIndicatorTintColor = .brown
    }

    var body: some View {
        let pageCount = onboarding.count
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                TabView {
                    ForEach(onboarding[0 ..< pageCount]) { _ in
                        Text("fdsklfjdskljf")
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
            }
        }
    }
}

struct OnboardingData: Identifiable {
    var id = UUID()
    let pageNumber: Int
    let imageName: String
}

let onboardingData: [OnboardingData] = [
    .init(pageNumber: 1, imageName: "path"),
    .init(pageNumber: 1, imageName: "path"),
    .init(pageNumber: 1, imageName: "path")
]

#Preview {
    ContentView()
}
