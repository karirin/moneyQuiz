//
//  GraphManagerView.swift
//  moneyQuiz
//
//  Created by hashimo ryoya on 2023/12/29.
//

import SwiftUI
import AVFoundation

struct GraphManagerView: View {
    @State private var isIntermediateQuizActive: Bool = false
    @State private var isPresentingQuizBeginnerList: Bool = false
    @ObservedObject var authManager = AuthManager.shared
    @State private var isButtonEnabled: Bool = true
    @State private var lastClickedDate: Date = Date()
    @State private var audioPlayerKettei: AVAudioPlayer?
    @State private var isPresentingQuizBeginner: Bool = false
    @State private var isPresentingQuizIntermediate: Bool = false
    @State private var isPresentingQuizAdvanced: Bool = false
    @State private var isPresentingQuizNetwork: Bool = false
    @State private var isPresentingQuizSecurity: Bool = false
    @State private var isPresentingQuizDatabase: Bool = false
    @State private var isPresentingQuizGod: Bool = false
    @State private var isSoundOn: Bool = true
    @ObservedObject var audioManager = AudioManager.shared
    @Environment(\.presentationMode) var presentationMode
    @State private var tutorialNum: Int = 0
    @State private var buttonRect: CGRect = .zero
    @State private var bubbleHeight: CGFloat = 0.0
    let sampleData = createSampleData()
    let list: [String] = ["回答数(月間)","正答率"]
    @State private var selectedTab: Int = 0
    @State private var preFlag: Bool = false
    @State private var userPreFlag: Int = 0
    @State private var isLoading: Bool = true

    var body: some View {
        ZStack{
            if isLoading {
                VStack{
                    ActivityIndicator()
                }
                .background(Color("Color2"))
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            } else {
                if userPreFlag != 1 {
                    VStack{
                        TopTabView(list: list, selectedTab: $selectedTab)
                        TabView(selection: $selectedTab,
                                content: {
                            
                            BarChartView(authManager: authManager, data: sampleData)
                                .navigationViewStyle(StackNavigationViewStyle())
                                .tag(0)
                            
                            PentagonManagerView(authManager: authManager)
                            //                            .padding(.top)
                                .tag(1)
                        })
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                    Color.black.opacity(0.6)
                        .onTapGesture {
                            preFlag = true
                        }
                    VStack{
                        Image(systemName: "lock.fill")
                            .font(.system(size: 44))
                            .foregroundStyle(.white)
                        Text("プレミアムプランに登録すると\n毎日の回答数や問題の正答率をグラフで確認することができます")
                            .bold()
                            .foregroundStyle(.white)
                    }
                }else{
                    VStack{
                        TopTabView(list: list, selectedTab: $selectedTab)
                        TabView(selection: $selectedTab,
                                content: {
                            
                            BarChartView(authManager: authManager, data: sampleData)
                                .navigationViewStyle(StackNavigationViewStyle())
                                .tag(0)
                            
                            PentagonManagerView(authManager: authManager)
                            //                            .padding(.top)
                                .tag(1)
                        })
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                }
            }
        }
        .sheet(isPresented: $preFlag) {
            PreView(audioManager: audioManager)
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(Color("Color2"))
        .onAppear {
            authManager.fetchPreFlag()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                userPreFlag = authManager.userPreFlag
                isLoading = false
            }
            if let soundURL = Bundle.main.url(forResource: "soundKettei", withExtension: "mp3") {
                do {
                    audioPlayerKettei = try AVAudioPlayer(contentsOf: soundURL)
                } catch {
                    print("Failed to initialize audio player: \(error)")
                }
            }
            if audioManager.isMuted {
                audioPlayerKettei?.volume = 0
            } else {
                audioPlayerKettei?.volume = 1.0
            }
        }
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

struct GraphManagerView_Previews: PreviewProvider {
    static var previews: some View {
        GraphManagerView()
    }
}


