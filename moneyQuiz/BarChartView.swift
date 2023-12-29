//
//  BarChartView.swift
//  moneyQuiz
//
//  Created by hashimo ryoya on 2023/12/20.
//

import SwiftUI
import Firebase
import Charts

struct DailyData {
    let date: String
    let count: Int

    init(date: Date, count: Int) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        self.date = dateFormatter.string(from: date)
        self.count = count
    }
}

struct BarChartView: View {
    @State var data: [DailyData]
    @ObservedObject var authManager: AuthManager
    
    // データ解析用の DateFormatter
    private var dataFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    
    // 表示用の DateFormatter
    private var displayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter
    }
    
    var body: some View {
        Chart {
            ForEach(data, id: \.date) { dailyData in
                BarMark(
                    x: .value("Date", self.displayDate(from: dailyData.date)),
                    y: .value("Count", dailyData.count)
                )
            }
        }
        .chartXAxis {
            AxisMarks(values: .stride(by: .day)) { value in
                AxisGridLine()
                if let dateValue = value.as(Date.self), shouldDisplayLabel(for: dateValue) {
                    let dateString = displayFormatter.string(from: dateValue)
                    AxisValueLabel(dateString)
                }
            }
        }

        .onAppear {
            fetchData(userId: authManager.currentUserId!)
        }
    }
    
    func shouldDisplayLabel(for date: Date) -> Bool {
        print("shouldDisplayLabel")
        let calendar = Calendar.current
        let dayComponent = calendar.component(.day, from: date)
        // 5日ごとにラベルを表示する条件を設定
        return [1, 6, 11, 16, 21, 26].contains(dayComponent)
    }

    
    func displayDate(from dateString: String) -> String {
        if let date = dataFormatter.date(from: dateString) {
            return displayFormatter.string(from: date)
        }
        return ""
    }
    
    func fetchData(userId: String) {
        let ref = Database.database().reference(withPath: "answers").child(userId)
        let calendar = Calendar.current
        let dateComponents = DateComponents(year: 2023, month: 12) // 例: 2023年12月
        let startDate = calendar.date(from: dateComponents)!
        let range = calendar.range(of: .day, in: .month, for: startDate)!

        ref.observe(.value, with: { snapshot in
            var dailyTotals = [String: Int]()

            // データベースからデータを取得
            if let userDict = snapshot.value as? [String: Any] {
                for (_, categoryDict) in userDict {
                    if let categoryDict = categoryDict as? [String: Any] {
                        for (date, count) in categoryDict {
                            if let count = count as? Int {
                                dailyTotals[date, default: 0] += count
                            }
                        }
                    }
                }
            }

            // 月の全ての日に対するデータを確認
            self.data = range.compactMap { day -> DailyData? in
                var dateComponents = DateComponents(year: 2023, month: 12, day: day)
                let date = Calendar.current.date(from: dateComponents)!
                let count = dailyTotals[dateFormatter.string(from: date)] ?? 0
                return DailyData(date: date, count: count)
            }
        })
    }
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd" // x軸の日付表示形式
        return formatter
    }

    func formatDate(dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let date = dateFormatter.date(from: dateString) {
            dateFormatter.dateFormat = "yyyy-MM-dd" // ここで必要なフォーマットに変更
            return dateFormatter.string(from: date)
        } else {
            return dateString
        }
    }

}


struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        // サンプルデータの作成
        let sampleData = createSampleData()

        // サンプルデータをBarChartViewに渡す
        BarChartView(data: sampleData, authManager: AuthManager())
    }

    static func createSampleData() -> [DailyData] {
        // 日付フォーマッタの設定
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        // サンプルデータの作成
        return [
            DailyData(date: dateFormatter.date(from: "2023-12-01")!, count: 10),
            DailyData(date: dateFormatter.date(from: "2023-12-02")!, count: 15),
            DailyData(date: dateFormatter.date(from: "2023-12-03")!, count: 20)
        ]
    }
}



