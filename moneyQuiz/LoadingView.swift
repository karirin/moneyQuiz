//
//  LoadingView.swift
//  moneyQuiz
//
//  Created by Apple on 2024/10/27.
//

import SwiftUI
import WebKit

struct LoadingView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ActivityIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .scaleEffect(1.4)
            .padding()
    }
}

struct CustomSpinner2: View {
    @State private var animate = false
    private let numberOfBars = 5
    private let barWidth: CGFloat = 6
    private let barHeight: CGFloat = 20
    private let animationDuration: Double = 0.6
    private let delayBetweenBars: Double = 0.2

    var body: some View {
        HStack(alignment: .bottom, spacing: barWidth * 2) {
            ForEach(0..<numberOfBars, id: \.self) { index in
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: barWidth, height: animate ? barHeight : barHeight / 2)
                    .animation(
                        Animation.easeInOut(duration: animationDuration)
                            .repeatForever(autoreverses: true)
                            .delay(Double(index) * delayBetweenBars),
                        value: animate
                    )
            }
        }
        .onAppear {
            animate = true
        }
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }
        uiView.load(URLRequest(url: url))
    }
}

#Preview {
    LoadingView()
}
