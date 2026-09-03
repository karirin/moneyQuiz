// Self-contained tab shell for moneyQuiz.
import SwiftUI

struct TopView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("ホーム")
                }

            StoryView(isReturnActive: .constant(false), isPresented: .constant(false))
                .tabItem {
                    Image(systemName: "map")
                    Text("ダンジョン")
                }

            GraphManagerView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("分析")
                }

            ContactView(audioManager: AudioManager.shared)
                .tabItem {
                    Image(systemName: "envelope")
                    Text("問い合わせ")
                }
        }
    }
}

#Preview {
    TopView()
}
