//
//  ModalExplanationView.swift
//  moneyQuiz
//
//  Created by hashimo ryoya on 2023/12/11.
//

import SwiftUI

struct ModalTimeOutView: View {
        @Binding var isPresented: Bool
        @Binding var selectedAnswerIndex: Int?
//        @ObservedObject var authManager = AuthManager.shared
        @State private var isContentView: Bool = false
        @State private var isDaily: Bool = false
        var question: String
        var userAnswer: String
        var correctAnswer: String
        var explanation: String
        @Binding var currentQuizIndex: Int
        var pauseTimer: () -> Void
        var startTimer: () -> Void
        
        var body: some View {
            ZStack {
                VStack(spacing: 15) {
                    HStack{
                            Image(systemName: "xmark")
                                .resizable()
                                .opacity(0.7)
                                .foregroundColor(.blue)
                                .frame(width: 20,height:20)
                            Text("タイムアウト")
                    }
                    HStack{
                    Text(" ")
                            .background(.gray)
                        .frame(width:10,height: 20)
                    Text("問題内容")
                        Spacer()
                }
                    HStack {
                        Text(question)
                        Spacer()
                    }
                    Spacer()
                        .frame(height:30)
                    HStack {
                            Text(" ")
                                .background(.gray)
                                .frame(width:10,height: 20)
                            Text("あなたの回答：\(userAnswer)")
                        Spacer()
                    }
                    HStack {
                            Text(" ")
                                .background(.gray)
                                .frame(width:10,height: 20)
                            Text("正解：\(correctAnswer)")
                        Spacer()
                    }
                    HStack {
                        Text(" ")
                            .background(.gray)
                            .frame(width: 10, height: 20)
                        
                        VStack(alignment: .leading) {
                            Text("解説：\(explanation)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    HStack{
                        Spacer()
                        Button(action: {
                            currentQuizIndex += 1
                            isPresented = false
                            selectedAnswerIndex = nil
                            startTimer()
                        }) {
                            HStack{
                                Text("次の問題へ")
                                
                            }
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(radius: 1)
                        }
                    }
                    NavigationLink("", destination: QuizManagerView(isPresenting: .constant(false)).navigationBarBackButtonHidden(true), isActive: $isContentView)
                    
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding()
            }
            .onAppear {
                pauseTimer()  // モーダルが表示されたときにタイマーを一時停止
            }
        }
    }

//#Preview {
//    func pauseTimer() {
//        timer?.invalidate()
//    }
//
//    ModalExplanationView(isPresented: .constant(false), selectedAnswerIndex: .constant(0), question: "問題", userAnswer: "回答", correctAnswer: "説明", explanation: "解説", currentQuizIndex: .constant(0), pauseTimer: 0)
//}
