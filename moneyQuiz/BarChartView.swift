////
////  BarChartView.swift
////  moneyQuiz
////
////  Created by hashimo ryoya on 2023/12/20.
////
//
//import SwiftUI
//import Firebase
//import Charts
//
//struct DailyData {
//    let date: String
//    let count: Int
//}
//
//struct BarChartView: View {
//    var data: [DailyData]
//    @ObservedObject var authManager: AuthManager
//    
//    var body: some View {
//        Chart {
//            ForEach(data, id: \.date) { dailyData in
//                BarMark(
//                    x: .value("Date", dailyData.date),
//                    y: .value("Count", dailyData.count)
//                )
//            }
//        }
//        .onAppear {
//            fetchData(userId: authManager.currentUserId!)
//                    }
//    }
//    func fetchData(userId: String) {
//        let ref = Database.database().reference(withPath: "answers").child(userId)
//
//        ref.observe(.value, with: { snapshot in
//            var dailyTotals = [String: Int]() // 日付ごとの合計を格納する辞書
//
//            if let userDict = snapshot.value as? [String: Any] {
//                for (_, categoryDict) in userDict {
//                    if let categoryDict = categoryDict as? [String: Any] {
//                        for (date, count) in categoryDict {
//                            if let count = count as? Int {
//                                dailyTotals[date, default: 0] += count
//                            }
//                        }
//                    }
//                }
//            }
//
//            // 処理したデータを使用します
//            print(dailyTotals)
//        })
//    }
//}
//
//struct BarChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        // サンプルデータの作成
//        let sampleData = [
//            DailyData(date: "2023-12-01", count: 10),
//            DailyData(date: "2023-12-02", count: 15),
//            DailyData(date: "2023-12-03", count: 20)
//        ]
//
//        // サンプルデータをBarChartViewに渡す
//        BarChartView(data: sampleData, authManager: AuthManager())
//    }
//}
//
