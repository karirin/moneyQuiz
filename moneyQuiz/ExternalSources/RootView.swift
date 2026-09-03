// Self-contained root for moneyQuiz.
import SwiftUI

struct RootView: View {
    @ObservedObject var authManager: AuthManager
    @State private var isActive = false

    var body: some View {
        Group {
            if isActive {
                TopView()
            } else {
                SplashScreenView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                withAnimation { isActive = true }
            }
        }
    }
}

#Preview {
    RootView(authManager: AuthManager.shared)
}
