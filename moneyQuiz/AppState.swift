////
////  AppState.swift
////  moneyQuiz
////
////  Created by hashimo ryoya on 2023/12/28.
////
//
//import SwiftUI
//import StoreKit
//
//class AppState: ObservableObject {
//    @Published var isBannerVisible = true
//
//    init() {
//    
//        
//        DispatchQueue.main.async {
//            self.checkSubscription()
//        }
//        
//        Task {
//                await checkCurrentSubscription()
//            }
//    }
//    // サブスクリプションの状態を確認する非同期メソッド
//     func checkCurrentSubscription() async {
//         for await result in Transaction.currentEntitlements {
//             switch result {
//             case .verified(let transaction):
//                 // サブスクリプションが有効であれば、必要なプロパティを更新
//                 DispatchQueue.main.async {
//                     // UI関連の更新はメインスレッドで行う
//                     self.updateSubscriptionState(transaction: transaction)
//                 }
//             case .unverified:
//                 // サブスクリプションが確認できない場合の処理
//                 break
//             }
//         }
//     }
//    
//    // サブスクリプションの状態に基づいてAppStateを更新するメソッド
//    func updateSubscriptionState(transaction: StoreKit.Transaction) {
//        // ここにサブスクリプションの状態に基づいたロジックを実装
//        // 例: self.isBannerVisible = !transaction.isSubscribed
//        print("test44")
//    }
//    
//    func checkSubscription() {
//        Task {
//            do {
//                let subscribed = try await self.isSubscribed()
//                print("subscribed:\(subscribed)")
//                DispatchQueue.main.async {
//                    self.isBannerVisible = !subscribed
////                    self.isBannerVisible = !true
//                    print("self.isBannerVisible = !subscribed")
//                    print(self.isBannerVisible)
//                }
//            } catch {
//                print("サブスクリプションの確認中にエラー: \(error)")
//            }
//        }
//    }
//
//    func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
//        switch result {
//        case let .unverified(_, verificationError):
//            throw verificationError
//        case let .verified(safe):
//            return safe
//        }
//    }
//
//    func getSubscriptionRenewalState(groupID: String) async throws -> [StoreKit.Product.SubscriptionInfo.RenewalState] {
//      var results: [StoreKit.Product.SubscriptionInfo.RenewalState] = []
//      let statuses = try await Product.SubscriptionInfo.status(for: groupID)
//      for status in statuses {
//        guard case .verified(let renewalInfo) = status.renewalInfo,
//              case .verified(let transaction) = status.transaction
//        else {
//          continue
//        }
//        results.append(status.state)
//      }
//      return results
//    }
//      
//    func isSubscribed() async throws -> Bool {
//        var subscriptionGroupIds: [String] = []
//        print("isSubscribed_1")
//        print("Transaction.currentEntitlements:\(Transaction.currentEntitlements)")
//        for await result in Transaction.currentEntitlements {
//            print("isSubscribed_2")
//            let transaction = try self.checkVerified(result)
//            print("transaction:\(transaction)")
//            guard let groupId = transaction.subscriptionGroupID else { continue }
//            print("groupId:\(groupId)")
//            subscriptionGroupIds.append(groupId)
//        }
//
//        for groupId in subscriptionGroupIds {
//            let renewalStates = try await getSubscriptionRenewalState(groupID: groupId)
//            print("renewalStates:\(renewalStates)")
//            for state in renewalStates {
//                switch state {
//                case .subscribed, .inGracePeriod:
//                    print("case subscribed inGracePeriod")
//                    return true
//                default:
//                    print("default")
//                    break
//                }
//            }
//        }
//        
//        return false // サブスクリプションがない、または有効でない場合に false を返す
//    }
//}
