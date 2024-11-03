//
//  PentagonShape.swift
//  it
//
//  Created by hashimo ryoya on 2023/11/30.
//

import SwiftUI

enum QuizJukugoLevel {
//    case beginner
//    case intermediate
//    case advanced
//    case network
//    case security
//    case database
//    case daily
//    case god
//    case incorrectAnswer
//    case timeBeginner
//    case timeIntermediate
//    case timeAdvanced
//    case incorrectTangoAnswer
//    case incorrectJukugoAnswer
//    case incorrectBunpouAnswer
//    case Tango3
//    case TangoJun2
//    case Tango2
//    case TangoJun1
//    case Tango1
//    case ToeicTangoBeginner
//    case ToeicTangoIntermediate
//    case ToeicTangoAdvanced
    case Jukugo3
    case JukugoJun2
    case Jukugo2
    case JukugoJun1
    case ToeicJukugoBeginner
    case ToeicJukugoAdvanced
//    case BunpouBeginner
//    case BunpouIntermediate
//    case BunpouAdvanced
//    case BunpouJunBeginner
//    case BunpouJunIntermediate
//    case BunpouJunAdvanced
//    case JunBunpouBeginner
    case ToeicJukugoIntermediate
    
    var description: String {
        switch self {
//        case .beginner:
//            return "beginner"
//        case .intermediate:
//            return "intermediate"
//        case .advanced:
//            return "advanced"
//        case .network:
//            return "network"
//        case .security:
//            return "security"
//        case .database:
//            return "database"
//        case .daily:
//            return "daily"
//        case .god:
//            return "god"
//        case .incorrectAnswer:
//            return "incorrectAnswer"
//        case .timeBeginner:
//            return "timeBeginner"
//        case .timeIntermediate:
//            return "timeIntermediate"
//        case .timeAdvanced:
//            return "timeAdvanced"
//        case .incorrectTangoAnswer:
//            return "incorrectTangoAnswer"
//        case .incorrectJukugoAnswer:
//            return "incorrectJukugoAnswer"
//        case .incorrectBunpouAnswer:
//            return "incorrectBunpouAnswer"
//        case .Tango3:
//            return "Tango3"
//        case .TangoJun2:
//            return "TangoJun2"
//        case .Tango2:
//            return "Tango2"
//        case .TangoJun1:
//            return "TangoJun1"
//        case .Tango1:
//            return "Tango1"
//        case .ToeicTangoBeginner:
//            return "ToeicTangoBeginner"
//        case .ToeicTangoIntermediate:
//            return "ToeicTangoIntermediate"
//        case .ToeicTangoAdvanced:
//            return "ToeicTangoAdvanced"
        case .Jukugo3:
            return "Jukugo3"
        case .JukugoJun2:
            return "JukugoJun2"
        case .Jukugo2:
            return "Jukugo2"
        case .JukugoJun1:
            return "JukugoJun1"
        case .ToeicJukugoBeginner:
            return "ToeicJukugoBeginner"
        case .ToeicJukugoIntermediate:
            return "ToeicJukugoIntermediate"
        case .ToeicJukugoAdvanced:
            return "ToeicJukugoAdvanced"
//        case .BunpouBeginner:
//            return "BunpouBeginner"
//        case .BunpouIntermediate:
//            return "BunpouIntermediate"
//        case .BunpouAdvanced:
//            return "BunpouAdvanced"
//        case .BunpouJunBeginner:
//            return "BunpouJunBeginner"
//        case .BunpouJunIntermediate:
//            return "BunpouJunIntermediate"
//        case .BunpouJunAdvanced:
//            return "BunpouJunAdvanced"
//        case .JunBunpouBeginner:
//            return "JunBunpouBeginner"
        case .ToeicJukugoBeginner:
            return "ToeicJukugoBeginner"
        case .ToeicJukugoIntermediate:
            return "ToeicJukugoIntermediate"
        }
    }
}

extension QuizJukugoLevel: CaseIterable {
    static var allCases: [QuizJukugoLevel] {
//        return [.beginner, .intermediate, .advanced, .god, .network, .security, .database]
//        return [.beginner, .intermediate, .advanced, .god, .database]
        return [
//            .beginner, .intermediate, .advanced, .network, .security, .database, .daily, .god, .incorrectAnswer,
//            .timeBeginner, .timeIntermediate, .timeAdvanced,
//            .incorrectTangoAnswer, .incorrectJukugoAnswer, .incorrectBunpouAnswer,
//            .Tango3, .TangoJun2, .Tango2, .TangoJun1, .Tango1,
//            .ToeicTangoBeginner, .ToeicTangoIntermediate, .ToeicTangoAdvanced,
            .Jukugo3, .JukugoJun2, .Jukugo2, .JukugoJun1,
            .ToeicJukugoBeginner, .ToeicJukugoIntermediate,
//            .ToeicJukugoAdvanced,
//            .BunpouBeginner, .BunpouIntermediate, .BunpouAdvanced
        ]
        // 除外したいケースをここで除外
    }
}

struct PentagonJukugoGraphShape: Shape {
    var quizData: [QuizJukugoLevel: QuizData]

    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let baseRadius = min(rect.width, rect.height) / 2 - 10
        let angle = (2 * CGFloat.pi) / 6

        var path = Path()

        for (i, level) in QuizJukugoLevel.allCases.enumerated() {
            let data = quizData[level] ?? QuizData(answer: 1, correct: 0)
            let radius = baseRadius * data.correctRate // 正解率に基づく半径
            let x = center.x + radius * cos(angle * CGFloat(i) - .pi / 2)
            let y = center.y + radius * sin(angle * CGFloat(i) - .pi / 2)
            let point = CGPoint(x: x, y: y)

            if i == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }

        path.closeSubpath()
        return path
    }
}

struct PentagonJukugoGraphLabelView: View {
    var label: String
    var index: Int
    // radius パラメータを削除して、ビューのサイズに基づいて計算するようにします

    var body: some View {
        GeometryReader { geometry in
            let angle = (2 * CGFloat.pi) / CGFloat(QuizJukugoLevel.allCases.count) * CGFloat(index) - .pi / 2
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
            // ビューのサイズに基づいて radius を計算します
            let radius = min(geometry.size.width, geometry.size.height) / 2 * 1.13 // 85% をラベルの配置に使用します

            let x = center.x + radius * cos(angle) - 20
            let y = center.y + radius * sin(angle) - 20

            Image("\(label)")
                .resizable()
                .frame(width: 40, height: 40)
                // ラベルの中心が正しい位置に来るように調整します
//                .offset(x: radius * cos(angle) + 178, y: radius * sin(angle) + 155)
//                .offset(x: radius * cos(angle) + 0, y: radius * sin(angle) + 0)
                .offset(x:x,y:y)
        }
        
    }
}


struct PentagonJukugoGraphBackgroundShape: Shape {
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2 - 10
        let angle = (2 * CGFloat.pi) / 6

        // ここから追加
        let scale: [CGFloat] = [0.1,0.2,0.3, 0.4,0.5, 0.6,0.7, 0.8,0.9, 1.0]
        var path = Path()

        // 目盛りの円を追加
        for factor in scale {
            let scaledRadius = radius * factor
            path.addEllipse(in: CGRect(x: center.x - scaledRadius, y: center.y - scaledRadius, width: scaledRadius * 2, height: scaledRadius * 2))
        }
        // ここまで追加

        for i in 0..<6 {
            let x = center.x + radius * cos(angle * CGFloat(i) - .pi / 2)
            let y = center.y + radius * sin(angle * CGFloat(i) - .pi / 2)
            path.move(to: center)
            path.addLine(to: CGPoint(x: x, y: y))
        }

        return path
    }
}


struct PentagonJukugoGraphView: View {
    @State private var quizData = [QuizJukugoLevel: QuizData]()
    let userId: String
    let labels: [String]
    let scaleNumbers: [CGFloat] = [0, 50, 100]
    let graphCenter = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
    let graphRadius = min(UIScreen.main.bounds.width, UIScreen.main.bounds.height) / 2
    
    var body: some View {
            GeometryReader { geometry in
                let graphCenter = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2 - 170)
                // graphRadiusの最大値を100とするための計算
                let graphRadius = min(geometry.size.width, geometry.size.height) / 2 - 10
                let maxScaleValue: CGFloat = 100 // スケールの最大値
                let scaleFactor = graphRadius / maxScaleValue // スケールファクター

                ZStack {
                    PentagonJukugoGraphBackgroundShape()
                                    .stroke(Color.gray, lineWidth: 1)
                    PentagonJukugoGraphShape(quizData: quizData)
                        .fill(Color.orange.opacity(0.2)) // 先に塗りつぶしを適用
                           .overlay(
                               PentagonJukugoGraphShape(quizData: quizData)
                                   .stroke(Color.orange, lineWidth: 2)
                           )

                    ForEach(Array(QuizJukugoLevel.allCases.enumerated()), id: \.offset) { (i, _) in
                        PentagonJukugoGraphLabelView(label: labels[i], index: i)
                    }
                    // 目盛りの数字を表示する
                    ForEach(scaleNumbers, id: \.self) { scaleValue in
                        // スケール値に基づいて半径を計算
                        let scaledRadius = scaleFactor * scaleValue
                        
                        // centerをgraphCenterに修正
                        let numberPosition = CGPoint(x: graphCenter.x, y: graphCenter.y - scaledRadius)
                        
                        // Text Viewを使って数字を表示
                        Text("\(Int(scaleValue))") // "%.1f" から整数に変更
                            .position(numberPosition)
                            .offset(x: -25, y: 170) // Textの位置を適宜調整
                    }
                }
                .onAppear {
                    RateManager.shared.fetchJukugoQuizData(userId: userId) { data in
                        self.quizData = data
                    }
                }
            }
        }
    }

struct PentagonJukugoView: View {
    @ObservedObject var authManager : AuthManager
    @State private var quizData = [QuizJukugoLevel: QuizData]()
    @ObservedObject var audioManager = AudioManager.shared
    @Environment(\.presentationMode) var presentationMode
    @Binding var flag: Bool
    var body: some View {
        VStack{
            PentagonJukugoGraphView(userId: authManager.currentUserId!, labels: ["資産計画グラフ2", "リスク管理グラフ2", "金融資産運用グラフ2", "タックスプランニンググラフ2","不動産グラフ2","相続・事業継承グラフ2"])
                .padding(.top,30)
            VStack(spacing: 0) {
                HStack{
                    Image("beginnerMonster1")
                        .resizable()
                        .frame(width:30,height:30)
                    Text("ダンジョンの種類")
                    Spacer()
                    Text("正答率")
                }
                .font(.system(size: 18))
                .padding()
                ScrollView{
                    ForEach(QuizJukugoLevel.allCases, id: \.self) { level in
                        if let quizDataForLevel = quizData[level] {
                            VStack{
                                HStack{
                                    Image("\(level.description)")
                                        .resizable()
                                        .frame(width: 200,height: 40)
                                    Spacer()
                                    Text("\(quizDataForLevel.correctPerRate, specifier: "%.0f")%")
                                        .font(.system(size: 22))
                                }
                                .padding(.horizontal)
                            Divider()
                            }
                        }
                    }
                }
            }
            .padding(.top)
        }
//        .background(Color(hue: 0.141, saturation: 0.058, brightness: 0.954))
        .background(Color("Color2"))
        .onAppear {
            print("currentuser:\(authManager.currentUserId)")
            RateManager.shared.fetchJukugoQuizData(userId: authManager.currentUserId!) { data in
                self.quizData = data
                print("self.quizData:\(self.quizData)")
            }
            self.flag = true
        }
        .onChange(of: flag) { flag in
            RateManager.shared.fetchJukugoQuizData(userId: authManager.currentUserId!) { data in
                self.quizData = data
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            audioManager.playCancelSound()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.gray)
            Text("戻る")
                .foregroundColor(Color("fontGray"))
        })
    }
}

struct PentagonJukugoShape_Previews: PreviewProvider {
    static let dummyAuthManager = AuthManager()
    static var previews: some View {
        PentagonJukugoView(authManager: dummyAuthManager, flag: .constant(false))
    }
}
