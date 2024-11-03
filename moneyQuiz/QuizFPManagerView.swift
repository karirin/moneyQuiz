//
//  QuizFPManagerView.swift
//  moneyQuiz
//
//  Created by Apple on 2024/09/28.
//

import SwiftUI

struct QuizFPManagerView: View {
        @Environment(\.presentationMode) var presentationMode
//    @Binding var selectedTab: Int
        @State private var canSwipe: Bool = false
    @State private var showAlert: Bool = false
//    @State private var selectedTab: Int = 0
    @State private var selectedTab: Int
    @State private var showLoginModal: Bool = false
    @State private var isButtonClickable: Bool = false
    @State private var isContentView: Bool = false
    @State private var tutorialNum: Int = 0
    @ObservedObject var authManager = AuthManager()
    public init(selectedTab: Int) {
        _selectedTab = State(initialValue: selectedTab)
    }
        let list: [String] = ["FP３級", "FP２級", "FP１級"]
        
        var body: some View {
                VStack{
                    TopTabView(list: list, selectedTab: $selectedTab)
                   
                    TabView(selection: $selectedTab,
                                        content: {
                        QuizTangoManagerView(isPresenting: .constant(false), tutorialNum: $tutorialNum)
//                            .padding(.top)
                                        .tag(0)
                        QuizJukugoManagerView(isPresenting: .constant(false), tutorialNum: $tutorialNum)
//                            .padding(.top)
                                        .tag(1)
                        QuizBunpouManagerView(isPresenting: .constant(false), tutorialNum: $tutorialNum)
//                            .padding(.top)
                                        .tag(2)
                                })
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    NavigationLink("", destination: ContentView().navigationBarBackButtonHidden(true), isActive: $isContentView)
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
//                    isContentView = true
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("fontGray"))
                    Text("戻る")
                        .foregroundColor(Color("fontGray"))
                })
//                .toolbar {
//                        ToolbarItem(placement: .principal) {
//                            Text("問題一覧")
//                                .font(.system(size: 20)) // ここでフォントサイズを指定
//                                .foregroundStyle(Color("fontGray"))
//                        }
//                    }
                .onAppear{
//                    selectedTab=0
                    print("selectedTab:\(selectedTab)")
                }
        }
}

#Preview {
    QuizFPManagerView(selectedTab: 0)
}
