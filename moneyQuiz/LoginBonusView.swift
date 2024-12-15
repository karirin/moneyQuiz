////
////  LoginBonusView.swift
////  moneyQuiz
////
////  Created by Apple on 2024/11/11.
////
//
//import SwiftUI
//struct LoginBonusView: View {
//    @Environment(\.presentationMode) var presentationMode
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("🎉 デイリーログインボーナス 🎉")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//            Text("今日もログインしてくれてありがとう！")
//                .font(.title2)
//                .multilineTextAlignment(.center)
//                .padding()
//            Image(systemName: "gift.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.yellow)
//            Text("+100 コイン")
//                .font(.title)
//                .foregroundColor(.green)
//            Button(action: {
//                // ボーナスビューを閉じる
//                presentationMode.wrappedValue.dismiss()
//            }) {
//                Text("受け取る")
//                    .font(.headline)
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .padding(.horizontal)
//            }
//        }
//        .padding()
//    }
//}
//struct LoginBonusView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginBonusView()
//    }
//}
