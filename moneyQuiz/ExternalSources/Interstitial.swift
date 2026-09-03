//
//  Interstitial.swift
//  it
//
//  Created by hashimo ryoya on 2023/11/28.
//

import SwiftUI
import GoogleMobileAds

class Interstitial: NSObject, GADFullScreenContentDelegate, ObservableObject {
    @Published var interstitialAdLoaded: Bool = false
    @Published var flag: Bool = false
    @Published var wasAdDismissed = false
    
    var interstitialAd: GADInterstitialAd?
    
    func loadInterstitial(completion: ((Bool) -> Void)? = nil) {
//      GADInterstitialAd.load(withAdUnitID: "ca-app-pub-3940256099942544/4411468910", request: GADRequest()) { (ad, error) in //テスト
        GADInterstitialAd.load(withAdUnitID: "ca-app-pub-4898800212808837/7857721016", request: GADRequest()) { (ad, error) in
        if let _ = error {
          print("loadInterstitial 😭: 読み込みに失敗しました")
          print("loadInterstitial 広告の読み込みに失敗しました: \(error!.localizedDescription)")
          self.interstitialAdLoaded = false
          completion?(false)
          return
        }
        print("loadInterstitial 😍: 読み込みに成功しましたああ")
        self.interstitialAdLoaded = true
        self.interstitialAd = ad
        self.interstitialAd?.fullScreenContentDelegate = self
        completion?(true)
      }
    }
    
    func presentInterstitial(from viewController: UIViewController) {
      guard let fullScreenAd = interstitialAd else {
        return print("Ad wasn't ready")
      }

      fullScreenAd.present(fromRootViewController: viewController)
    }
    
    func adDidRecordImpression(_ ad: GADFullScreenPresentingAd) {
      print("\(#function) called")
    }

    func adDidRecordClick(_ ad: GADFullScreenPresentingAd) {
      print("\(#function) called")
    }
    
    // 失敗通知
    func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("インタースティシャル広告の表示に失敗しました")
        self.interstitialAdLoaded = false
        self.loadInterstitial()
    }

    // 表示通知
    func adWillPresentFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("インタースティシャル広告を表示しました")
//        self.interstitialAdLoaded = false // 広告表示時に false に設定
    }

    func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("インタースティシャル広告を閉じました")
        self.interstitialAdLoaded = false // 広告閉じた時に false に設定
        self.wasAdDismissed = true
//        loadInterstitial()  // 新しい広告をロード
    }
}

struct AdViewControllerRepresentable: UIViewControllerRepresentable {
  let viewController = UIViewController()

  func makeUIViewController(context: Context) -> some UIViewController {
    return viewController
  }

  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    // No implementation needed. Nothing to update.
  }
}

struct Interstitial1: View {
    private let adViewControllerRepresentable = AdViewControllerRepresentable()
        @ObservedObject var interstitial = Interstitial()
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background {
                        // Add the adViewControllerRepresentable to the background so it
                        // doesn't influence the placement of other views in the view hierarchy.
                        adViewControllerRepresentable
                          .frame(width: .zero, height: .zero)
                      }
        }
        .onAppear {
            interstitial.loadInterstitial()
            interstitial.presentInterstitial(from: adViewControllerRepresentable.viewController)
        }
    }
}

#Preview {
    Interstitial1()
}
