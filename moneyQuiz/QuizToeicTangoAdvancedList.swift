//
//  QuizToeicTangoAdvancedList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizToeicTangoAdvancedList: View {
    @Binding var isPresenting: Bool
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？あああああああああああああああああああ",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
//        ),
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？あああああああああああああああああああ",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
//        )
//        ]
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ネットワークのアドレスで、インターネット上のコンピュータやネットワークを一意に識別するための番号は？",
//            choices: [
//                "MACアドレス",
//                "IPアドレス",
//                "URL",
//                "DNS"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "インターネット上のコンピュータやネットワークを一意に識別するための番号は「IPアドレス」といいます。"
//        )
//    ]
    let quizBeginnerList: [QuizQuestion] = [
        QuizQuestion(
            question: "推薦",
            choices: [
                "すいせん",
                "すいけん",
                "ついせん",
                "ついけん"
            ],
            correctAnswerIndex: 0,
            explanation: "「推薦」は「すいせん」と読みます。他の人や物をよいと認めて、その価値を認識させるために勧めることを意味します。"
        ),
        QuizQuestion(
            question: "鑑賞",
            choices: [
                "かんしょう",
                "がんしょう",
                "かんそう",
                "かんせい"
            ],
            correctAnswerIndex: 0,
            explanation: "「鑑賞」は「かんしょう」と読みます。美術品や音楽などをじっくり見たり聞いたりして、その価値や美しさを楽しむことを指します。"
        ),
        QuizQuestion(
            question: "繁栄",
            choices: [
                "はんえい",
                "ふんえい",
                "はんよう",
                "ふんよう"
            ],
            correctAnswerIndex: 0,
            explanation: "「繁栄」は「はんえい」と読みます。栄えてゆくこと、また、その状態を表します。経済や文化などが発展して充実することを意味します。"
        ),
            QuizQuestion(
                question: "勧誘",
                choices: [
                    "かんきゅう",
                    "かんゆう",
                    "けんゆう",
                    "けんきゅう"
                ],
                correctAnswerIndex: 1,
                explanation: "「勧誘」は「かんゆう」と読みます。他人を誘って何かをするようにすすめることを指します。"
            ),
            QuizQuestion(
                question: "誇張",
                choices: [
                    "こしょう",
                    "こちょう",
                    "こじょう",
                    "こちゃく"
                ],
                correctAnswerIndex: 1,
                explanation: "「誇張」は「こちょう」と読みます。事実よりも大げさに表現することです。"
            ),
            QuizQuestion(
                question: "創造",
                choices: [
                    "そうぞう",
                    "そうさい",
                    "そうたい",
                    "ぞうそう"
                ],
                correctAnswerIndex: 0,
                explanation: "「創造」は「そうぞう」と読みます。新しいものや考えを生み出すことです。"
            ),
            QuizQuestion(
                question: "偽造",
                choices: [
                    "ぎぞう",
                    "きそう",
                    "ぎそう",
                    "きぞう"
                ],
                correctAnswerIndex: 0,
                explanation: "「偽造」は「ぎぞう」と読みます。真実や本物のように見せかけるために、物や文書などを作り変えることです。"
            ),
            QuizQuestion(
                question: "慈悲",
                choices: [
                    "じび",
                    "しひ",
                    "じひ",
                    "しび"
                ],
                correctAnswerIndex: 2,
                explanation: "「慈悲」は「じひ」と読みます。他人の苦しみに対して心を痛め、助けようとする優しい気持ちです。"
            ),
            QuizQuestion(
                question: "憧憬",
                choices: [
                    "どうけい",
                    "しょうけい",
                    "どうきょう",
                    "しょうきょう"
                ],
                correctAnswerIndex: 1,
                explanation: "「憧憬」は「しょうけい」と読みます。憧れと憬れの意味を合わせた言葉で、遠く離れたものに憧れる気持ちを表します。"
            ),
            QuizQuestion(
                question: "昂進",
                choices: [
                    "こうしん",
                    "ごうしん",
                    "こうじん",
                    "こうせん"
                ],
                correctAnswerIndex: 0,
                explanation: "「昂進」は「こうしん」と読みます。精神を奮い立たせて、前進することを意味します。"
            ),
            QuizQuestion(
                question: "稀薄",
                choices: [
                    "けはく",
                    "きばく",
                    "きはく",
                    "ひばく"
                ],
                correctAnswerIndex: 2,
                explanation: "「稀薄」は「きはく」と読みます。物事がまれで希少なことや、濃度が薄いことを意味します。"
            ),
            QuizQuestion(
                question: "詮索",
                choices: [
                    "せんさく",
                    "せんさつ",
                    "せんしゃく",
                    "せんそく"
                ],
                correctAnswerIndex: 0,
                explanation: "「詮索」は「せんさく」と読みます。細かいところまで調べ求めること、探り出そうとすることです。"
            ),
            QuizQuestion(
                question: "嫉妬",
                choices: [
                    "しっと",
                    "しつど",
                    "じっと",
                    "じつど"
                ],
                correctAnswerIndex: 0,
                explanation: "「嫉妬」は「しっと」と読みます。他人の成功や幸福に対して、妬むことです。"
            ),
            QuizQuestion(
                question: "恣意",
                choices: [
                    "しい",
                    "じい",
                    "ちい",
                    "じえい"
                ],
                correctAnswerIndex: 0,
                explanation: "「恣意」は「しい」と読みます。自分の思うままに行動すること、またはその意思を指します。"
            ),
            QuizQuestion(
                question: "誹謗",
                choices: [
                    "ひぼう",
                    "ひほう",
                    "ひもう",
                    "ひぼお"
                ],
                correctAnswerIndex: 0,
                explanation: "「誹謗」は「ひぼう」と読みます。他人の悪口や非難を言うことです。"
            ),
            QuizQuestion(
                question: "謳歌",
                choices: [
                    "うか",
                    "おうか",
                    "かおう",
                    "おうう"
                ],
                correctAnswerIndex: 1,
                explanation: "「謳歌」は「おうか」と読みます。楽しむことやその楽しみを満喫することを意味します。"
            ),
            QuizQuestion(
                question: "騒動",
                choices: [
                    "そうど",
                    "そうとう",
                    "そうどう",
                    "そうろう"
                ],
                correctAnswerIndex: 2,
                explanation: "「騒動」は「そうどう」と読みます。騒ぎ立てることや、その事件や事態を指します。"
            ),
            QuizQuestion(
                question: "誘拐",
                choices: [
                    "ゆうかい",
                    "ゆうがい",
                    "いゆう",
                    "かいゆう"
                ],
                correctAnswerIndex: 0,
                explanation: "「誘拐」は「ゆうかい」と読みます。人を無理やりに連れ去る犯罪行為です。"
            ),
            QuizQuestion(
                question: "蓄積",
                choices: [
                    "ちくせき",
                    "ちくじく",
                    "ちくしゃく",
                    "ちくしょく"
                ],
                correctAnswerIndex: 0,
                explanation: "「蓄積」は「ちくせき」と読みます。物事を少しずつためていくことを指します。"
            ),
            QuizQuestion(
                question: "矛盾",
                choices: [
                    "ぼうじん",
                    "むじゅん",
                    "むどん",
                    "むこん"
                ],
                correctAnswerIndex: 1,
                explanation: "「矛盾」は「むじゅん」と読みます。相反することや考えが同時に存在している状態を意味します。"
            ),
            QuizQuestion(
                question: "頓挫",
                choices: [
                    "とんざ",
                    "どんさ",
                    "どんざ",
                    "とんさ"
                ],
                correctAnswerIndex: 2,
                explanation: "「頓挫」は「どんざ」と読みます。進行中の事が突然停止または失敗することです。"
            ),
            QuizQuestion(
                question: "斡旋",
                choices: [
                    "あっせん",
                    "おっせん",
                    "あせん",
                    "おせん"
                ],
                correctAnswerIndex: 0,
                explanation: "「斡旋」は「あっせん」と読みます。仲介して両者の間を取り持つことです。"
            ),
            QuizQuestion(
            question: "卑近",
            choices: [
                "ひきん",
                "ひこん",
                "ひじん",
                "ひしん"
            ],
            correctAnswerIndex: 0,
            explanation: "「卑近」は「ひきん」と読みます。身近でありながら平凡または低俗なことを意味します。"
            ),



    ]
        
    @State private var shuffledQuizList: [QuizQuestion]
    private var authManager = AuthManager()
    private var audioManager = AudioManager.shared
    @StateObject var sharedInterstitial = Interstitial()
    

    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _shuffledQuizList = State(initialValue: quizBeginnerList.shuffled())
    }
    
    var body: some View {
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicTangoAdvanced, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicTangoAdvancedList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicTangoAdvancedList(isPresenting: .constant(false))
    }
}





