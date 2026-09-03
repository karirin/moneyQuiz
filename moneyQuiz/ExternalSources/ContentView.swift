// Self-contained home for moneyQuiz.
import SwiftUI

struct ViewPositionKey: PreferenceKey {
    static var defaultValue: [CGRect] = []

    static func reduce(value: inout [CGRect], nextValue: () -> [CGRect]) {
        value.append(contentsOf: nextValue())
    }
}

struct ContentView: View {
    @ObservedObject private var audioManager = AudioManager.shared
    @State private var showQuiz = false
    @State private var showStory = false

    var body: some View {
        NavigationView {
            ZStack {
                Color("Color2").ignoresSafeArea()
                VStack(spacing: 24) {
                    Spacer()
                    VStack(spacing: 8) {
                        Text("Money Quiz")
                            .font(.system(size: 34, weight: .bold))
                        Text("お金とFPの学習クイズ")
                            .foregroundColor(.secondary)
                    }
                    VStack(spacing: 16) {
                        Button {
                            audioManager.playKetteiSound()
                            showQuiz = true
                        } label: {
                            Label("問題を解く", systemImage: "book.closed.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)

                        Button {
                            audioManager.playKetteiSound()
                            showStory = true
                        } label: {
                            Label("ダンジョン", systemImage: "map.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                    }
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.horizontal, 32)

                    NavigationLink("", destination: ManagerView(audioManager: audioManager).navigationBarBackButtonHidden(true), isActive: $showQuiz)
                    NavigationLink("", destination: StoryView(isReturnActive: .constant(true), isPresented: $showStory).navigationBarBackButtonHidden(true), isActive: $showStory)
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
