//
//  QuizManagerView.swift
//  it
//
//  Created by hashimo ryoya on 2023/09/20.
//

import SwiftUI
import AVFoundation

struct QuizManagerView: View {
    @State private var isIntermediateQuizActive: Bool = false
    @State private var isPresentingQuizBeginnerList: Bool = false
    @ObservedObject var authManager = AuthManager.shared
    @State private var isButtonEnabled: Bool = true
    @State private var lastClickedDate: Date = Date()
    @State private var audioPlayerKettei: AVAudioPlayer?
    @State private var isPresentingQuizIncorrectAnswer: Bool = false
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
    @Binding var isPresenting: Bool
    @State private var tutorialNum: Int = 0
    @State private var buttonRect: CGRect = .zero
    @State private var bubbleHeight: CGFloat = 0.0
    
    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _lastClickedDate = State(initialValue: Date())
    }


    var body: some View {
        NavigationView{
            ZStack{
                    ScrollView{
                        VStack {
                            HStack {
                                Text(" ")
                                    .background(.gray)
                                    .frame(width:10,height: 20)
                                Text("過去に不正解した問題だけを解くことができます")
                                    .font(.system(size: 15))
                            }
                            .padding(.horizontal)
                            Button(action: {
                                audioManager.playKetteiSound()
                                // 画面遷移のトリガーをオンにする
                                self.isPresentingQuizIncorrectAnswer = true
                            }) {
                                //                        Image("IT基礎知識の問題の初級")
                                Image("選択肢0")
                                    .resizable()
                                    .frame(height: 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
//                            .shadow(radius: 5)
                            .fullScreenCover(isPresented: $isPresentingQuizIncorrectAnswer) {
                                QuizIncorrectAnswerListView(isPresenting: $isPresentingQuizIncorrectAnswer)
                                        }
                        
                            HStack {
                                Text(" ")
                                    .background(.gray)
                                    .frame(width:10,height: 20)
                                Text("問題の難易度、種類別で解くことができます　　")
                                    .font(.system(size: 15))
                            }
                            .padding(.horizontal)
                                Button(action: {
                                    audioManager.playKetteiSound()
                                    // 画面遷移のトリガーをオンにする
                                    self.isPresentingQuizBeginner = true
                                }) {
                                    //                        Image("IT基礎知識の問題の初級")
                                    Image("選択肢1")
                                        .resizable()
                                        .frame(height: 70)
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal)
                                .padding(.bottom)
//                                .shadow(radius: 5)
                                .fullScreenCover(isPresented: $isPresentingQuizBeginner) {
                                                QuizBeginnerList(isPresenting: $isPresentingQuizBeginner)
                                            }
                            .background(GeometryReader { geometry in
                                Color.clear.preference(key: ViewPositionKey.self, value: [geometry.frame(in: .global)])
                            })
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizIntermediate = true
                            }) {
                                //                    Image("IT基礎知識の問題の中級")
                                Image("選択肢2")
                                    .resizable()
                                    .frame(height: 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
//                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizIntermediate) {
                                            QuizIntermediateList(isPresenting: $isPresentingQuizIntermediate)
                                        }
                            
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizAdvanced = true
                            }) {
                                //                    Image("IT基礎知識の問題の上級")
                                Image("選択肢3")
                                    .resizable()
                                    .frame(height: 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
//                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizAdvanced) {
                                            QuizAdvancedList(isPresenting: $isPresentingQuizAdvanced)
                                        }
//                            Button(action: {
//                                audioManager.playKetteiSound()
//                                self.isPresentingQuizGod = true
//                            }) {
//                                //                    Image("データベース系の問題")
//                                Image("選択肢7")
//                                    .resizable()
//                                    .frame(height: 70)
//                            }
//                            .frame(maxWidth: .infinity)
//                            .padding(.horizontal)
//                            .padding(.bottom)
//                            .shadow(radius: 3)
//                            .fullScreenCover(isPresented: $isPresentingQuizGod) {
//                                            QuizGodList(isPresenting: $isPresentingQuizGod)
//                                        }
//                            // ネットワーク系の問題
//                            Button(action: {
//                                audioManager.playKetteiSound()
//                                self.isPresentingQuizNetwork = true
//                            }) {
//                                //                    Image("ネットワーク系の問題")
//                                Image("選択肢4")
//                                    .resizable()
//                                    .frame(height: 70)
//                            }
//                            .frame(maxWidth: .infinity)
//                            .padding(.horizontal)
//                            .padding(.bottom)
//                            .shadow(radius: 3)
//                            .fullScreenCover(isPresented: $isPresentingQuizNetwork) {
//                                            QuizNetworkList(isPresenting: $isPresentingQuizNetwork)
//                                        }
//                            
//                            // セキュリティ系の問題
//                            Button(action: {
//                                audioManager.playKetteiSound()
//                                self.isPresentingQuizSecurity = true
//                            }) {
//                                //                    Image("セキュリティ系の問題")
//                                Image("選択肢5")
//                                    .resizable()
//                                    .frame(height: 70)
//                            }
//                            .frame(maxWidth: .infinity)
//                            .padding(.horizontal)
//                            .padding(.bottom)
//                            .shadow(radius: 3)
//                            .fullScreenCover(isPresented: $isPresentingQuizSecurity) {
//                                            QuizSecurityList(isPresenting: $isPresentingQuizSecurity)
//                                        }
//                            
//                            // データベース系の問題
//                            Button(action: {
//                                audioManager.playKetteiSound()
//                                self.isPresentingQuizDatabase = true
//                            }) {
//                                //                    Image("データベース系の問題")
//                                Image("選択肢6")
//                                    .resizable()
//                                    .frame(height: 70)
//                            }
//                            .frame(maxWidth: .infinity)
//                            .padding(.horizontal)
//                            .padding(.bottom)
//                            .shadow(radius: 3)
//                            .fullScreenCover(isPresented: $isPresentingQuizDatabase) {
//                                            QuizDatabaseList(isPresenting: $isPresentingQuizDatabase)
//                                        }
                            
                        }
//                        VStack{
//                            Group{
////                                NavigationLink("", destination: QuizDatabaseList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizDatabase) // 適切な遷移先に変更してください
//////                                NavigationLink("", destination: QuizBeginnerList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizBeginner) // 適切な遷移先に変更してください
////                                NavigationLink("", destination: QuizIntermediateList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizIntermediate) // 適切な遷移先に変更してください
////                                NavigationLink("", destination: QuizAdvancedList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizAdvanced)
////                                NavigationLink("", destination: QuizSecurityList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizSecurity) // 適切な遷移先に変更してください
////                                
////                                NavigationLink("", destination: QuizNetworkList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizNetwork)
////                                NavigationLink("", destination: QuizGodList(isPresenting: $isPresenting).navigationBarBackButtonHidden(true), isActive: $isPresentingQuizGod)
//                            }
//                        }
                        
                    }
                    .padding(.top,-30)
                .onPreferenceChange(ViewPositionKey.self) { positions in
                    self.buttonRect = positions.first ?? .zero
                }
                if tutorialNum == 2 {
                    GeometryReader { geometry in
                        Color.black.opacity(0.5)
                        // スポットライトの領域をカットアウ
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .frame(width: buttonRect.width - 20, height: buttonRect.height)
                                    .position(x: buttonRect.midX, y: buttonRect.midY-10)
                                    .blendMode(.destinationOut)
                            )
                            .ignoresSafeArea()
                            .compositingGroup()
                            .background(.clear)
                    }
                    VStack {
                        Spacer()
                            .frame(height: buttonRect.minY + bubbleHeight)
                        VStack(alignment: .trailing, spacing: .zero) {
                            Image("上矢印")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 306.0)
                            Text("「IT基礎知識の問題（初級）」をクリックしてください。")
                                .font(.system(size: 24.0))
                                .padding(.all, 16.0)
                                .background(Color.white)
                                .cornerRadius(4.0)
                                .padding(.horizontal, 16)
                                .foregroundColor(Color("fontGray"))
                        }
                        .background(GeometryReader { geometry in
                            Path { _ in
                                DispatchQueue.main.async {
                                    self.bubbleHeight = geometry.size.height - 40
                                }
                            }
                        })
                        Spacer()
                    }
                    .ignoresSafeArea()
                }
            }
            .onTapGesture {
                audioManager.playSound()
                tutorialNum = 0
                authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 3) { success in
                       // データベースのアップデートが成功したかどうかをハンドリング
                   }
            }
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color("Color2"))
            .onAppear {
                authManager.fetchUserInfo { (name, avatar, money, hp, attack, tutorialNum) in
                    if let fetchedTutorialNum = tutorialNum {
                        self.tutorialNum = fetchedTutorialNum
                    }
                }
                if let userId = authManager.currentUserId {
                    authManager.fetchLastClickedDate(userId: userId) { date in
                        if let unwrappedDate = date {
                            lastClickedDate = unwrappedDate
                            let calendar = Calendar.current
                            if calendar.isDateInToday(unwrappedDate) {
                                isButtonEnabled = false
                            }
                        } else {
                            print("lastClickedDate is nil")
                        }
                    }
                }
                isIntermediateQuizActive = authManager.level >= 10
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
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                audioManager.playCancelSound()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color("fontGray"))
                Text("戻る")
                    .foregroundColor(Color("fontGray"))
            })
            .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("ダンジョン一覧")
                            .font(.system(size: 20)) // ここでフォントサイズを指定
                    }
                }
            }
        }
        
    }



struct QuizManagerView_Previews: PreviewProvider {
    static var previews: some View {
        QuizManagerView(isPresenting: .constant(false))
    }
}
