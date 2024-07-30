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
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(.mainColor)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(.pricingDetailBorderColor)
    }

    var body: some View {
        let pageCount = onboarding.count
        GeometryReader {
            let screenHeight = $0.size.height
            let screenWidth = $0.size.width
            ZStack {
                Color.green
                    .opacity(0.5)
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    TabView {
                        ForEach(onboarding[0 ..< pageCount]) { _ in
                            Text("fdsklfjdskljf")
                        }
                    }
                    .tabViewStyle(.page)
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
                    .background(Color.red, in: RoundedRectangle(cornerRadius: 10))
                    Button {
                        // TODO: 処理を書く
                    } label: {
                        Text("次へ")
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.mainColor, in: RoundedRectangle(cornerRadius: 8))
                    .foregroundStyle(Color.white)
                    .font(.system(size: 16, weight: .bold))
                    .padding(.bottom, 24)
                } // VStack
                .frame(height: screenHeight * 0.8)
                .background(Color.white, in: RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 16)
            } // ZStack
        } // GeometryReader
    } // body
} // View

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

extension Color {
    static let pricingDetailBorderColor = Color("pricingDetailBorderColor")
    static let mainColor = Color("mainColor")
}

#Preview {
    ContentView()
}
