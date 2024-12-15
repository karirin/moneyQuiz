//
//  itApp.swift
//  it
//
//  Created by hashimo ryoya on 2023/09/16.
//

import SwiftUI
import Firebase
import GoogleMobileAds

class AppDelegate: NSObject, UIApplicationDelegate {
//    var appState: AppState!
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
//        self.appState = AppState()
        return true
    }
}

@main
struct moneyQuizApp: App {
    @ObservedObject var authManager: AuthManager
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var appState = AppState()

    init() {
        FirebaseApp.configure()
        authManager = AuthManager.shared
    }
    
    var body: some Scene {
        WindowGroup {
//            TopView(authManager: authManager)
            RootView(authManager: authManager)
                .onAppear{
                    if let userId = authManager.currentUserId {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            if appState.isBannerVisible {
                                AuthManager.shared.updatePreFlag(userId: AuthManager.shared.currentUserId!, userPreFlag: 0){ success in
                                }
                            }
                        }
                    } else {
                        authManager.anonymousSignIn(){}
                    }
                }
        }
    }
}

