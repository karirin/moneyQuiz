//
//  QuizTangoManager.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI
import AVFoundation
import Firebase

struct QuizTangoTabManagerView: View {
    @State private var isPresentingQuizBeginner: Bool = false
    @State private var isPresentingQuizIntermediate: Bool = false
    @State private var isPresentingQuizAdvanced: Bool = false
    @State private var isPresentingQuizNetwork: Bool = false
    @State private var isPresentingQuizSecurity: Bool = false
    @State private var isPresentingQuizDatabase: Bool = false
    @State private var isPresentingQuizGod: Bool = false
    @State private var isPresentingQuizIncorrectAnswer: Bool = false
    @State private var isLoading: Bool = true
    @State private var hasIncorrectAnswers: Bool = true
    @State private var tutorialNum: Int = 0
    @Binding var isPresenting: Bool
    @ObservedObject var authManager = AuthManager()
    @ObservedObject var audioManager = AudioManager.shared
    @State private var buttonRect: CGRect = .zero
    @State private var bubbleHeight: CGFloat = 0.0
    @State private var showLoginModal: Bool = false
    @State private var isButtonClickable: Bool = false
    @State private var isIncorrectAnswersEmpty: Bool = true
    @State private var preFlag: Bool = false
    @State private var userPreFlag: Int = 0
    @State private var audioPlayerKettei: AVAudioPlayer?
    
    init(isPresenting: Binding<Bool>, tutorialNum: Binding<Int>) {
        _isPresenting = isPresenting
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    // 説明テキスト
                    HStack {
                        Text(" ")
                            .frame(width: isIPad() ? 10 : 5, height: isIPad() ? 40 : 15)
                            .background(.gray)
                        Text(" FP３級で不正解した問題だけを解くことができます")
                            .font(.system(size: isIPad() ? 38 : 14))
                            .foregroundColor(Color("fontGray"))
                    }
                    .padding(.top)
                    
                    // 不正解復習ボタン
                    ImageButton(
                        imageName: "復習問題3",
                        action: {
                            if userPreFlag != 1 {
                                preFlag = true
                            } else {
                                if !isIncorrectAnswersEmpty {
                                    self.isPresentingQuizIncorrectAnswer = true
                                }
                            }
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: isIncorrectAnswersEmpty,
                        isIPad: isIPad(), isIncorrectFlag: true, userPreFlag: userPreFlag
                    )
                    .fullScreenCover(isPresented: $isPresentingQuizIncorrectAnswer) {
                        QuizIncorrectTangoAnswerListView(isPresenting: $isPresentingQuizIncorrectAnswer)
                            .edgesIgnoringSafeArea(.all)
                    }
                    .onChange(of: isPresentingQuizBeginner) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizIncorrectAnswer) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizIntermediate) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizAdvanced) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizGod) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizNetwork) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizSecurity) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    .onChange(of: isPresentingQuizDatabase) { isPresenting in
                            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        }
                    }
                    
                    // 分野別問題ボタン群
                    HStack {
                        Text(" ")
                            .frame(width: isIPad() ? 10 : 5, height: isIPad() ? 40 : 15)
                            .background(.gray)
                        Text(" 分野別にFP３級の問題を解くことができます　")
                            .font(.system(size: isIPad() ? 40 : 15))
                            .foregroundColor(Color("fontGray"))
                    }
                    .padding(.horizontal)
                    
                    // 資金計画ボタン
                    ImageButton(
                        imageName: "資産計画3",
                        action: {
                            self.isPresentingQuizBeginner = true
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: hasIncorrectAnswers,
                        isIPad: isIPad(),
                        isIncorrectFlag: false, userPreFlag: userPreFlag
                    )
                    .background(GeometryReader { geometry in
                        Color.clear.preference(key: ViewPositionKey.self, value: [geometry.frame(in: .global)])
                    })
                    .fullScreenCover(isPresented: $isPresentingQuizBeginner) {
                        QuizTango3List(isPresenting: $isPresentingQuizBeginner)
                            .edgesIgnoringSafeArea(.all)
                    }
                    
                    // リスク管理ボタン
                    ImageButton(
                        imageName: "リスク管理3",
                        action: {
                            self.isPresentingQuizIntermediate = true
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: hasIncorrectAnswers,
                        isIPad: isIPad(),
                        isIncorrectFlag: false, userPreFlag: userPreFlag
                    )
                    .fullScreenCover(isPresented: $isPresentingQuizIntermediate) {
                        QuizTangoJun2List(isPresenting: $isPresentingQuizIntermediate)
                            .edgesIgnoringSafeArea(.all)
                    }
                    
                    // 金融資産運用ボタン
                    ImageButton(
                        imageName: "金融資産運用3",
                        action: {
                            self.isPresentingQuizAdvanced = true
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: hasIncorrectAnswers,
                        isIPad: isIPad(),
                        isIncorrectFlag: false, userPreFlag: userPreFlag
                    )
                    .fullScreenCover(isPresented: $isPresentingQuizAdvanced) {
                        QuizTango2List(isPresenting: $isPresentingQuizAdvanced)
                            .edgesIgnoringSafeArea(.all)
                    }
                    
                    // タックスプランニングボタン
                    ImageButton(
                        imageName: "タックスプランニング3",
                        action: {
                            self.isPresentingQuizGod = true
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: hasIncorrectAnswers,
                        isIPad: isIPad(),
                        isIncorrectFlag: false, userPreFlag: userPreFlag
                    )
                    .fullScreenCover(isPresented: $isPresentingQuizGod) {
                        QuizTangoJun1List(isPresenting: $isPresentingQuizGod)
                            .edgesIgnoringSafeArea(.all)
                    }
                    
                    // 不動産ボタン
                    ImageButton(
                        imageName: "不動産3",
                        action: {
                            self.isPresentingQuizNetwork = true
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: hasIncorrectAnswers,
                        isIPad: isIPad(),
                        isIncorrectFlag: false, userPreFlag: userPreFlag
                    )
                    .fullScreenCover(isPresented: $isPresentingQuizNetwork) {
                        QuizTango1List(isPresenting: $isPresentingQuizNetwork)
                            .edgesIgnoringSafeArea(.all)
                    }
                    
                    // 相続・事業承継ボタン
                    ImageButton(
                        imageName: "相続・事業継承3",
                        action: {
                            self.isPresentingQuizSecurity = true
                        },
                        isLoading: isLoading,
                        hasIncorrectAnswers: hasIncorrectAnswers,
                        isIPad: isIPad(),
                        isIncorrectFlag: false, userPreFlag: userPreFlag
                    )
                    .fullScreenCover(isPresented: $isPresentingQuizSecurity) {
                        QuizToeicTangoBeginnerList(isPresenting: $isPresentingQuizSecurity)
                            .edgesIgnoringSafeArea(.all)
                    }
                }
            }
            .onPreferenceChange(ViewPositionKey.self) { positions in
                self.buttonRect = positions.first ?? .zero
            }
            
            // PreView Sheet
            .sheet(isPresented: $preFlag) {
                PreView(audioManager: audioManager)
            }
            
            // Tutorial Overlay
//            if tutorialNum == 2 {
//                GeometryReader { geometry in
//                    Color.black.opacity(0.5)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 20, style: .continuous)
//                                .frame(width: buttonRect.width, height: buttonRect.height)
//                                .position(x: buttonRect.midX, y: isSmallDevice() ? buttonRect.midY - 130 : buttonRect.midY - 162)
//                                .blendMode(.destinationOut)
//                        )
////                            .padding(.horizontal, -10)
//                        .ignoresSafeArea()
//                        .compositingGroup()
//                        .background(.clear)
//                }
//                VStack {
//                    Spacer()
//                        .frame(height:isSmallDevice() ? buttonRect.minY + bubbleHeight - 110 : buttonRect.minY + bubbleHeight - 140)
//                    VStack(alignment: .trailing, spacing: .zero) {
//                        Text("「【１年生】足し算、引き算」をクリックしてください。")
//                            .font(.callout)
//                            .padding(5)
//                            .font(.system(size: 24.0))
//                            .padding(.all, 16.0)
//                            .background(Color("Color2"))
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 20)
//                                    .stroke(Color.gray, lineWidth: 15)
//                            )
//                            .cornerRadius(20)
//                            .padding(.horizontal, 16)
//                            .foregroundColor(Color("fontGray"))
//                            .shadow(radius: 10)
//                    }
//                    .background(GeometryReader { geometry in
//                        Path { _ in
//                            DispatchQueue.main.async {
//                                self.bubbleHeight = geometry.size.height
//                            }
//                        }
//                    })
//                    Spacer()
//                }
//                .ignoresSafeArea()
//                VStack{
//                    HStack{
//                        Button(action: {
//                            tutorialNum = 0 // タップでチュートリアルを終了
//                            authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
//                            }
//                        }) {
//                            Image("スキップ")
//                                .resizable()
//                                .frame(width:200,height:60)
//                                .padding(.leading)
//                        }
//                        Spacer()
//                    }
//                    .padding(.top, 20)
//                    Spacer()
//                }
//            }
        }
        .onTapGesture {
//            if tutorialNum == 2 {
//                tutorialNum = 0
//                authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 3) { success in
//                    // Handle success if needed
//                }
//            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("backgroundColor"))
        .onAppear {
            authManager.fetchIncorrectTangoAnswers() { _ in
                hasIncorrectAnswers = authManager.hasIncorrectTangoAnswers
            }
            authManager.fetchUserInfo { (name, avatar, money, hp, attack, tutorialNum) in
                if let fetchedTutorialNum = tutorialNum {
                    self.tutorialNum = fetchedTutorialNum
                }
            }
            fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                isIncorrectAnswersEmpty = (count == 0)
                authManager.fetchPreFlag()
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    userPreFlag = authManager.userPreFlag
                    print("userPreFlag  :\(userPreFlag)")
                    isLoading = false
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // 2秒後に
                self.isButtonClickable = true // ボタンをクリック可能に設定
            }
            if let soundURL = Bundle.main.url(forResource: "soundKettei", withExtension: "mp3") {
                do {
                    audioPlayerKettei = try AVAudioPlayer(contentsOf: soundURL)
                } catch {
                    print("Failed to initialize audio player: \(error)")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    // カスタムボタンビュー
    struct ImageButton: View {
        let imageName: String
        let action: () -> Void
        let isLoading: Bool
        let hasIncorrectAnswers: Bool
        let isIPad: Bool
        let isIncorrectFlag: Bool
        let userPreFlag: Int
        @ObservedObject var authManager = AuthManager()
        
        var body: some View {
            Button(action: action) {
                if isIncorrectFlag {
                    if isLoading {
                        ZStack {
                            Image("\(imageName)白黒")
                                .resizable()
                                .frame(height: isIPad ? 200 : 70)
                            ProgressView()
                                .scaleEffect(2)
                        }
                    } else {
                        ZStack {
                            if hasIncorrectAnswers {
                                Image("\(imageName)白黒")
                                    .resizable()
                                    .frame(height: isIPad ? 200 : 70)
                            } else {
                                Image(imageName)
                                    .resizable()
                                    .frame(height: isIPad ? 200 : 70)
                            }
                            if userPreFlag != 1 {
                                ZStack {
                                    Color.black.opacity(0.45)
                                        .cornerRadius(30)
                                    Text("プレミアムプランを登録すると\n復習機能が開放されます")
                                        .font(.system(size: isIPad ? 50 : 20))
                                        .foregroundStyle(.white)
                                        .bold()
                                        .multilineTextAlignment(.center)
                                }
                            }
                        }
                    }
                } else {
                    Image(imageName)
                        .resizable()
                        .frame(height: isIPad ? 200 : 70)
                }
            }
            .foregroundColor(Color("fontGray"))
            .padding(.horizontal)
            .padding(.bottom)
            .shadow(radius: 3)
            .onAppear {
//                authManager.fetchPreFlag()
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//                    userPreFlag = authManager.userPreFlag
//                    print("userPreFlag1    :\(userPreFlag)")
//                }
            }
        }
    }
    
    // デバイスがiPadかどうかを判定する関数
    func isIPad() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    func isSmallDevice() -> Bool {
        return UIScreen.main.bounds.width < 390
    }
    
    // 不正解回答数を取得する関数
    func fetchNumberOfIncorrectTangoAnswers(userId: String, completion: @escaping (Int) -> Void) {
        let ref = Database.database().reference().child("IncorrectTangoAnswers").child(userId)
        ref.observeSingleEvent(of: .value) { snapshot in
            let count = snapshot.childrenCount // 子ノードの数を取得
            completion(Int(count))
            print("tangoCount:\(count)")
            self.isIncorrectAnswersEmpty = (count == 0)
        }
    }
}

struct QuizTangoTabManagerView_Previews: PreviewProvider {
    static var previews: some View {
//        QuizTangoManagerView(isPresenting: .constant(false), tutorialNum: .constant(0))
        TopView()
    }
}
