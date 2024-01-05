//
//  ModalTittleView.swift
//  moneyQuiz
//
//  Created by hashimo ryoya on 2024/01/05.
//eated by hashimo ryoya on 2023/10/04.
//

import SwiftUI

struct ModalTittleView: View {
    @Binding var showLevelUpModal: Bool
    @ObservedObject var authManager: AuthManager
    @ObservedObject var audioManager = AudioManager.shared
    @Binding var tittleNumber: Int

    var body: some View {
        ZStack {
            // 半透明の背景
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    showLevelUpModal = false
                }

            VStack(spacing: 0) {
//                    .padding(.bottom,80)
                if tittleNumber == 30 {
                    Text("称号獲得")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                    Image("回答数３０")
                        .resizable()
                        .frame(width:250,height:250)
                    Text("称号を獲得しました")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                } else if tittleNumber == 50 {
                    Text("称号獲得")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                    Image("回答数５０")
                        .resizable()
                        .frame(width:250,height:250)
                    Text("称号を獲得しました")
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                } else if tittleNumber == 100 {
                    Text("称号獲得")
                        .font(.system(size: 28))
                        .fontWeight(.medium)
                    Image("回答数１００")
                        .resizable()
                        .frame(width:250,height:250)
                    Text("「クイズ王」を獲得しました")
                        .font(.system(size: 26))
                        .fontWeight(.medium)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
        }
        .overlay(
            // 「×」ボタンを右上に配置
            Button(action: {
                showLevelUpModal = false
                audioManager.playCancelSound()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(50)
                    .padding()
            }
            .offset(x: 130, y: -170)
        )
        .onAppear{
            authManager.fetchUserExperienceAndLevel()
        }
    }
}

struct ModalTittleView_Previews: PreviewProvider {
    static var previews: some View {
        let authManager = AuthManager()
        ModalTittleView(showLevelUpModal: .constant(true), authManager: authManager, tittleNumber: .constant(100))
    }
}


