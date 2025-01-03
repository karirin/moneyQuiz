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
    @ObservedObject var authManager: AuthManager
    // サンプルデータの作成
    let sampleData = createSampleData()
    @State private var currentDate = Date()
    @State var data: [DailyData] = []
    @ObservedObject var audioManager = AudioManager.shared
    @Environment(\.presentationMode) var presentationMode
    @State private var isDataAvailable = false
    @State private var isLoading: Bool = true

    
    private var displayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "M/d" // 月-日の形式に変更
        formatter.locale = Locale(identifier: "ja_JP") // ロケールを日本に設定
        return formatter
    }
    
    private var yearMonthFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年 M月" // 「2024年 1月」のような形式
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter
    }
    
    private var monthFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "M月" // 「2024年 1月」のような形式
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter
    }
    
    private var fullDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "M月 d日" // 「2024年 1月 1日」の形式
        formatter.locale = Locale(identifier: "ja_JP") // ロケールを日本に設定
        return formatter
    }

    func formattedDate(from dateString: String) -> String {
        if let date = dateFormatter.date(from: dateString) {
            return fullDateFormatter.string(from: date)
        }
        return ""
    }

    var body: some View {
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("fontGray"))
                    Spacer()
                        .frame(width:20)
                    Text(yearMonthFormatter.string(from: currentDate)) // currentDateをフォーマットして表示
                                .font(.system(size: 20))
                    
                    .foregroundColor(Color("fontGray"))
                    Spacer()
                        .frame(width:20)
                    Image(systemName: "chevron.right")
                    
                    .foregroundColor(Color("fontGray"))
                    Spacer()
                }
                .padding(.top)
                VStack{
                    if isLoading {
                        // ローディング画面を表示
                        VStack{
                            CustomSpinner2()
                        }.frame(maxWidth: .infinity,maxHeight:.infinity)
                    } else {
                    if !isDataAvailable {
                        VStack{
                            Text("\(Text(monthFormatter.string(from: currentDate)))はデータがありません")
                                .font(.system(size: 26))
                                .padding()
                            
                            .foregroundColor(Color("fontGray"))
                            Image("ライムグラフ")
                                .resizable()
                                .frame(width:300,height:300)
                        }.frame(maxWidth: .infinity,maxHeight: .infinity)
                            .gesture(
                                DragGesture()
                                    .onEnded { gesture in
                                        // スワイプの方向に応じて月を変更
                                        if gesture.translation.width > 0 {
                                            // 右スワイプ: 前月に戻る
                                            changeMonth(by: -1)
                                        } else {
                                            // 左スワイプ: 次月に進む
                                            changeMonth(by: 1)
                                        }
                                    }
                            )
                    }else{
                        VStack{
                            Chart {
                                ForEach(data, id: \.date) { dailyData in
                                    BarMark(
                                        x: .value("Date", dailyData.date),
                                        y: .value("Count", dailyData.count)
                                    )
                                }
                            }
                            .chartXAxis {
                                AxisMarks(position: .bottom, values: .automatic) { value in
                                    if let dateStr = value.as(String.self),
                                       let date = dateFormatter.date(from: dateStr),
                                       Calendar.current.component(.day, from: date) % 3 == 0 { // 日付が5の倍数であるかをチェック
                                        
                                        AxisValueLabel(displayFormatter.string(from: date))
                                    } else {
                                        AxisValueLabel("") // 5の倍数でない場合はラベルを空にする
                                    }
                                }
                            }
                            .frame(height:200)
                            .padding()
                            
                            
                            Spacer()
                            HStack{
                                Image(systemName: "calendar")
                                    .foregroundColor(.red)
                                Text("日付")
                                
                                .foregroundColor(Color("fontGray"))
                                Spacer()
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.blue)
                                Text("回答数")
                                
                                .foregroundColor(Color("fontGray"))
                            }
                            .font(.system(size: 24))
                            .padding(.horizontal)
                            ScrollView{
                                ForEach(data, id: \.date) { item in
                                    if item.count != 0 {
                                        VStack{
                                            HStack {
                                                Text(formattedDate(from: item.date)) // ここを更新
                                                    .font(.system(size: 26))
                                                Spacer()
                                                Text("\(item.count)")
                                                    .font(.system(size: 26))
                                                Text("問")
                                                    .padding(.top,5)
                                            }
                                            .font(.system(size: 20))
                                            .padding(.horizontal)
                                            Divider()
                                        }
                                    }
                                }
                            }
                            
                            .foregroundColor(Color("fontGray"))
                            .onAppear {
                                fetchData(userId: authManager.currentUserId!,for: currentDate)
                            }
                        }.gesture(
                            DragGesture()
                                .onEnded { gesture in
                                    // スワイプの方向に応じて月を変更
                                    if gesture.translation.width > 0 {
                                        // 右スワイプ: 前月に戻る
                                        changeMonth(by: -1)
                                    } else {
                                        // 左スワイプ: 次月に進む
                                        changeMonth(by: 1)
                                    }
                                }
                        )
                    }
                    }
                }
                .onAppear {
                    fetchData(userId: authManager.currentUserId!,for: currentDate)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        print("data:\(data)")
                    }
                }
            }
            .background(Color("Color2"))
//        .navigationBarItems(leading: Button(action: {
//            self.presentationMode.wrappedValue.dismiss()
//            audioManager.playCancelSound()
//        }) {
//            Image(systemName: "chevron.left")
//                .foregroundColor(.gray)
//            Text("戻る")
//                .foregroundColor(Color("fontGray"))
//        })
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                Text("日付別の回答数")
//                    .font(.system(size: 20)) // ここでフォントサイズを指定
//            }
//        }
    }
    
    func isSmallDevice() -> Bool {
        return UIScreen.main.bounds.width < 390
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
    
    private var dataFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    
    func displayDate(from dateString: String) -> String {
        if let date = dataFormatter.date(from: dateString) {
            return displayFormatter.string(from: date)
        }
        return ""
    }
    
    // 表示用の DateFormatter
//    private var displayFormatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "d"
//        return formatter
//    }
    
    func shouldDisplayLabel(for date: Date) -> Bool {
        print("shouldDisplayLabel")
        let calendar = Calendar.current
        let dayComponent = calendar.component(.day, from: date)
        // 5日ごとにラベルを表示する条件を設定
        return [1, 6, 11, 16, 21, 26].contains(dayComponent)
    }
    
    func changeMonth(by months: Int) {
        if let newDate = Calendar.current.date(byAdding: .month, value: months, to: currentDate) {
            currentDate = newDate
            fetchData(userId: authManager.currentUserId!, for: newDate)
        }
    }
    
    func fetchData(userId: String, for date: Date) {
        let ref = Database.database().reference(withPath: "answers").child(userId)
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)

        let dateComponents = DateComponents(year: year, month: month)
        let startDate = calendar.date(from: dateComponents)!
        let range = calendar.range(of: .day, in: .month, for: startDate)!

        ref.observe(.value, with: { snapshot in
            var dailyTotals = [String: Int]()

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
                var dateComponents = DateComponents(year: year, month: month, day: day)
                let date = Calendar.current.date(from: dateComponents)!
                let count = dailyTotals[dateFormatter.string(from: date)] ?? 0
                return DailyData(date: date, count: count)
            }
            self.isDataAvailable = self.data.contains { $0.count > 0 }
            self.isLoading = false // データ取得が完了
        })
    }

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd" // x軸の日付表示形式
        return formatter
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        // プレビュー用のサンプルデータを作成
        let sampleData = createSampleData()

        // BarChartAllViewにサンプルデータを渡して初期化
        BarChartView(authManager: AuthManager(), data: sampleData)
    }

    static func createSampleData() -> [DailyData] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return [
            DailyData(date: dateFormatter.date(from: "2023-12-01")!, count: 10),
            DailyData(date: dateFormatter.date(from: "2023-12-02")!, count: 15),
            DailyData(date: dateFormatter.date(from: "2023-12-03")!, count: 20)
        ]
    }
}


