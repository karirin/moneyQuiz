//
//  StoryCoinModalView.swift
//  it
//
//  Created by Apple on 2024/11/17.
//

import SwiftUI

struct Treasure: Codable {
    let coinImage: String
    let coinTitle: String
    let reward: Int
}

struct StoryCoinModalView: View {
    @ObservedObject var authManager = AuthManager()
    @ObservedObject var audioManager = AudioManager()
    let coin: Int
    @Binding var isPresented: Bool
    @State var toggle = false
    @State private var text: String = ""
    @State private var coinImage: String = ""
    @State private var coinTitle: String = ""
    @State private var isMovingUp = false
    
    let treasures: [Int: Treasure] = [
        1: Treasure(coinImage: "コイン1", coinTitle: "100コインゲット！！", reward: 100),
        2: Treasure(coinImage: "コイン1", coinTitle: "100コインゲット！！", reward: 100),
        3: Treasure(coinImage: "コイン1", coinTitle: "100コインゲット！！", reward: 100),
        4: Treasure(coinImage: "コイン3", coinTitle: "300コインゲット！！", reward: 300),
        5: Treasure(coinImage: "コイン2", coinTitle: "200コインゲット！！", reward: 200),
        6: Treasure(coinImage: "コイン3", coinTitle: "300コインゲット！！", reward: 300),
        7: Treasure(coinImage: "コイン2", coinTitle: "200コインゲット！！", reward: 200),
        8: Treasure(coinImage: "コイン5", coinTitle: "500コインゲット！！", reward: 500),
        9: Treasure(coinImage: "コイン4", coinTitle: "400コインゲット！！", reward: 400),
        10: Treasure(coinImage: "コイン4", coinTitle: "400コインゲット！！", reward: 400),
        11: Treasure(coinImage: "コイン4", coinTitle: "400コインゲット！！", reward: 400),
        12: Treasure(coinImage: "コイン4", coinTitle: "400コインゲット！！", reward: 400),
        13: Treasure(coinImage: "コイン7", coinTitle: "800コインゲット！！", reward: 800),
        14: Treasure(coinImage: "コイン6", coinTitle: "600コインゲット！！", reward: 600),
        15: Treasure(coinImage: "コイン6", coinTitle: "600コインゲット！！", reward: 600),
        16: Treasure(coinImage: "コイン7", coinTitle: "800コインゲット！！", reward: 800),
        17: Treasure(coinImage: "コイン6", coinTitle: "600コインゲット！！", reward: 600),
        18: Treasure(coinImage: "コイン7", coinTitle: "800コインゲット！！", reward: 800),
        19: Treasure(coinImage: "コイン8", coinTitle: "800コインゲット！！", reward: 800),
    ]
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.6)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    isPresented = false
                    audioManager.playCancelSound()
                }
                ZStack{
                    VStack {
                        HStack{
                            Spacer()
                                .frame(width:270)
                            Button(action: {
                                isPresented = false
                                audioManager.playCancelSound()
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.gray)
                                    .background(.white)
                                    .cornerRadius(50)
                            }
                        }
                        .padding(.bottom, -50)
                    Image("\(coinImage)")
//                        Image("コイン1")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .offset(y: isMovingUp ? -5 : 5)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                                isMovingUp.toggle()
                            }
                        }
                    Text("\(coinTitle)")
//                        Text("100コインゲット！！")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
            }.frame(height: 150)
            
            .foregroundColor(Color("fontGray"))
//            .padding()
        .shadow(radius: 10)
        .padding(25)
                }
        .onAppear {
            // ビューが表示された際にパラメータを設定
            setTreasureParameters(coin: coin)
        }
            }
    private func setTreasureParameters(coin: Int) {
        if let treasure = treasures[coin] {
            coinImage = treasure.coinImage
            coinTitle = treasure.coinTitle
            AuthManager.shared.addMoney(amount: treasure.reward)
        } else {
                print("未知の宝物")
        }
    }
        }

#Preview {
    StoryCoinModalView(coin: 1, isPresented: .constant(true))
}

