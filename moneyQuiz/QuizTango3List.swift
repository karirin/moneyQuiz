//
//  QuizList.swift //英検３級 単語
//  it
//
//  Created by hashimo ryoya on 2023/09/16.
//

import SwiftUI

struct QuizTango3List: View {
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
            question: "生活設計とは、次のうちどれですか？",
            choices: [
                "住宅を購入すること",
                "旅行に行く計画を立てること",
                "将来の生活を見据えた総合的な計画を立てること",
                "車を買い替えること",
            ],
            correctAnswerIndex: 2,
            explanation: "生活設計とは、将来の生活を見据えた総合的な計画を立てることを指します。収入や支出、貯蓄などを考慮して計画を立てることが重要です。"
        ),
        QuizQuestion(
            question: "公的年金制度において、厚生年金保険の加入者が受け取れる年金はどれですか？",
            choices: [
                "国民年金",
                "厚生年金",
                "企業年金",
                "個人年金",
            ],
            correctAnswerIndex: 1,
            explanation: "厚生年金保険の加入者が受け取れる年金は「厚生年金」です。国民年金は全ての国民が加入する基礎年金であり、厚生年金はこれに上乗せされる形で支給されます。"
        ),
        QuizQuestion(
            question: "教育資金の準備方法として適切でないものはどれですか？",
            choices: [
                "定期預金に積み立てる",
                "株式投資をする",
                "学資保険に加入する",
                "個人向け国債を購入する",
            ],
            correctAnswerIndex: 1,
            explanation: "教育資金の準備方法として、株式投資は価格変動リスクが高いため適切ではありません。他の方法は比較的リスクが低く、安定した資金準備が可能です。"
        ),
        QuizQuestion(
            question: "住宅ローンの返済方法として適切でないものはどれですか？",
            choices: [
                "元利均等返済",
                "元金均等返済",
                "ボーナス返済併用",
                "一括返済",
            ],
            correctAnswerIndex: 3,
            explanation: "住宅ローンの返済方法として、一括返済は適切ではありません。住宅ローンは長期間にわたって返済するものであり、毎月の返済負担を軽減するために分割返済が基本です。"
        ),
        QuizQuestion(
            question: "ライフイベント表の作成において考慮するべきでないものはどれですか？",
            choices: [
                "結婚",
                "出産",
                "転職",
                "旅行計画",
            ],
            correctAnswerIndex: 3,
            explanation: "ライフイベント表の作成において、旅行計画は考慮するべき項目ではありません。結婚や出産、転職、退職などの重要なライフイベントを考慮して計画を立てることが大切です。"
        ),
        QuizQuestion(
            question: "確定拠出年金の特徴として正しいものはどれですか？",
            choices: [
                "運用の結果に関係なく固定利率が適用される",
                "運用の結果次第で将来受け取る年金額が変動する",
                "国が運用するのでリスクがない",
                "加入者は運用指示を行う必要がない",
            ],
            correctAnswerIndex: 1,
            explanation: "確定拠出年金は、運用の結果次第で将来受け取る年金額が変動する特徴があります。加入者自身が運用方法を選択し、その成果によって受取額が決まります。"
        ),
        QuizQuestion(
            question: "老後の生活費の目安として一般的に考えられている金額はどれですか？",
            choices: [
                "月額10万円",
                "月額20万円",
                "月額30万円",
                "月額40万円",
            ],
            correctAnswerIndex: 2,
            explanation: "老後の生活費の目安として一般的に考えられている金額は月額30万円です。これは夫婦二人世帯を基準とした金額であり、個々のライフスタイルや必要に応じて異なる場合があります。"
        ),
        QuizQuestion(
            question: "子供の教育費の準備に適している金融商品はどれですか？",
            choices: [
                "学資保険",
                "株式",
                "投資信託",
                "不動産投資",
            ],
            correctAnswerIndex: 0,
            explanation: "子供の教育費の準備に適している金融商品は学資保険です。学資保険は教育資金を計画的に貯めるための保険で、満期時に一定の金額が受け取れるため、リスクが低く安定した準備が可能です。"
        ),
        QuizQuestion(
            question: "住宅購入時に必要な諸費用として含まれないものはどれですか？",
            choices: [
                "仲介手数料",
                "登記費用",
                "固定資産税",
                "家具購入費"
            ],
            correctAnswerIndex: 3,
            explanation: "住宅購入時に必要な諸費用には、仲介手数料、登記費用、固定資産税、火災保険料が含まれますが、家具購入費は含まれません。家具は住宅購入後に別途必要となる費用です。"
        ),
        QuizQuestion(
            question: "FPの基本的な業務に含まれないものはどれですか？",
            choices: [
                "資産運用のアドバイス",
                "住宅ローンの相談",
                "法律相談",
                "保険の見直し",
            ],
            correctAnswerIndex: 2,
            explanation: "FPの基本的な業務には、資産運用のアドバイス、住宅ローンの相談、保険の見直し、ライフプランニングが含まれますが、法律相談は含まれません。法律相談は弁護士の業務となります。"
        ),
        QuizQuestion(
            question: "リスク管理において、保険でカバーできないリスクはどれですか？",
            choices: [
                "生命保険でカバーできる死亡リスク",
                "火災保険でカバーできる火災リスク",
                "自動車保険でカバーできる事故リスク",
                "株式投資でカバーできる市場リスク",
            ],
            correctAnswerIndex: 3,
            explanation: "リスク管理において、株式投資でカバーできる市場リスクは保険ではカバーできません。市場リスクは投資商品の価値が変動するリスクであり、保険ではなく投資の分散などで管理します。"
        ),
        QuizQuestion(
            question: "年金受給のために必要な最低加入期間は何年ですか？",
            choices: [
                "5年",
                "10年",
                "15年",
                "20年",
            ],
            correctAnswerIndex: 1,
            explanation: "年金受給のために必要な最低加入期間は10年です。この期間を満たしていることで、老齢年金の受給資格が得られます。"
        ),
        QuizQuestion(
            question: "所得税の計算において、控除される項目として適切でないものはどれですか？",
            choices: [
                "基礎控除",
                "扶養控除",
                "社会保険料控除",
                "交通費控除"
            ],
            correctAnswerIndex: 3,
            explanation: "所得税の計算において、交通費控除は存在しません。基礎控除、扶養控除、社会保険料控除、医療費控除は所得税の控除項目として適切です。"
        ),
        QuizQuestion(
            question: "年金の種類のうち、民間企業の従業員が加入するものはどれですか？",
            choices: [
                "国民年金",
                "厚生年金",
                "共済年金",
                "企業年金",
            ],
            correctAnswerIndex: 1,
            explanation: "民間企業の従業員が加入する年金は厚生年金です。国民年金は全ての国民が加入する基礎年金であり、企業年金や個人年金は追加的な年金制度です。"
        ),
        QuizQuestion(
            question: "ライフプランニングにおいて考慮すべき重要な要素はどれですか？",
            choices: [
                "趣味",
                "交友関係",
                "職歴",
                "健康状態",
            ],
            correctAnswerIndex: 3,
            explanation: "ライフプランニングにおいては、健康状態が重要な要素となります。健康状態は将来の医療費や介護費用、働く能力に影響を与えるため、しっかりと考慮する必要があります。"
        ),
        QuizQuestion(
            question: "住宅ローンの返済負担率の目安として適切なものはどれですか？",
            choices: [
                "10％未満",
                "20％未満",
                "30％未満",
                "40％未満",
            ],
            correctAnswerIndex: 2,
            explanation: "住宅ローンの返済負担率の目安として適切なものは30％未満です。これは年間の返済額が年収の30％を超えないようにすることで、無理のない返済計画を立てるためです。"
        ),
        QuizQuestion(
            question: "保険料控除の対象となる保険はどれですか？",
            choices: [
                "生命保険",
                "火災保険",
                "自動車保険",
                "旅行保険",
            ],
            correctAnswerIndex: 0,
            explanation: "保険料控除の対象となる保険は生命保険です。火災保険や自動車保険、旅行保険、ペット保険は保険料控除の対象ではありません。"
        ),
        QuizQuestion(
            question: "子供の教育資金を貯めるための最も一般的な方法はどれですか？",
            choices: [
                "定期預金",
                "株式投資",
                "学資保険",
                "不動産投資",
            ],
            correctAnswerIndex: 2,
            explanation: "子供の教育資金を貯めるための最も一般的な方法は学資保険です。学資保険は教育資金を計画的に貯めるための保険であり、安定した準備が可能です。"
        ),
        QuizQuestion(
            question: "ライフプランニングにおけるキャッシュフロー表とは何ですか？",
            choices: [
                "支出のみを記載する表",
                "収入と支出を記載し、将来の収支を予測する表",
                "貯蓄額のみを記載する表",
                "資産の価値を記載する表",
            ],
            correctAnswerIndex: 1,
            explanation: "キャッシュフロー表とは、収入と支出を記載し、将来の収支を予測する表です。これにより、将来の資金計画や必要な対策を立てることができます。"
        ),
        QuizQuestion(
            question: "定年退職後の生活費の見積もりにおいて、最も考慮すべき支出項目はどれですか？",
            choices: [
                "趣味の費用",
                "旅行費用",
                "医療費",
                "教育費",
            ],
            correctAnswerIndex: 2,
            explanation: "定年退職後の生活費の見積もりにおいて、最も考慮すべき支出項目は医療費です。高齢になると医療費が増加する可能性が高いため、しっかりと見積もる必要があります。"
        ),
        QuizQuestion(
            question: "住宅ローンの金利タイプで、返済期間中に金利が変動するものはどれですか？",
            choices: [
                "固定金利型",
                "変動金利型",
                "段階金利型",
                "リバースモーゲージ",
            ],
            correctAnswerIndex: 1,
            explanation: "変動金利型の住宅ローンは、返済期間中に金利が変動するタイプです。市場の金利動向に応じて金利が変わるため、返済額も変動する可能性があります。"
        ),
        QuizQuestion(
            question: "公的年金の受給開始年齢として正しいものはどれですか？",
            choices: [
                "55歳",
                "60歳",
                "65歳",
                "70歳",
            ],
            correctAnswerIndex: 2,
            explanation: "公的年金の受給開始年齢は65歳です。ただし、希望により60歳から70歳の間で繰上げや繰下げを選択することも可能です。"
        ),
        QuizQuestion(
            question: "教育資金の準備において、リスクが最も低いとされる金融商品はどれですか？",
            choices: [
                "株式",
                "投資信託",
                "定期預金",
                "不動産投資",
            ],
            correctAnswerIndex: 2,
            explanation: "教育資金の準備において、定期預金はリスクが最も低いとされる金融商品です。元本が保証され、安定した利息が得られるため、安全性が高いです。"
        ),
        QuizQuestion(
            question: "住宅購入の際に利用できる公的融資制度はどれですか？",
            choices: [
                "固定金利型ローン",
                "変動金利型ローン",
                "リバースモーゲージ",
                "フラット35",
            ],
            correctAnswerIndex: 3,
            explanation: "住宅購入の際に利用できる公的融資制度の一つにフラット35があります。これは全期間固定金利の住宅ローンで、借入期間中の金利が一定です。"
        ),
        QuizQuestion(
            question: "ライフプランニングにおける重要なファクターとして、次のうちどれが最も関連性が低いですか？",
            choices: [
                "収入",
                "支出",
                "健康状態",
                "趣味"
            ],
            correctAnswerIndex: 3,
            explanation: "ライフプランニングにおける重要なファクターには収入、支出、健康状態、年齢がありますが、趣味は関連性が低いです。趣味も生活設計に影響を与える場合がありますが、他の要素ほど重要ではありません。"
        ),
        QuizQuestion(
            question: "年金制度のうち、全ての国民が加入するものはどれですか？",
            choices: [
                "厚生年金",
                "国民年金",
                "企業年金",
                "私的年金",
            ],
            correctAnswerIndex: 1,
            explanation: "国民年金は全ての国民が加入する年金制度です。基礎年金として、日本国内に住む20歳以上60歳未満の全ての人が対象となります。"
        ),
        QuizQuestion(
            question: "ライフプランニングにおいて、収入の増加を見込むための方法として適切でないものはどれですか？",
            choices: [
                "昇進",
                "転職",
                "投資",
                "宝くじの購入",
            ],
            correctAnswerIndex: 3,
            explanation: "収入の増加を見込むための方法として、宝くじの購入は適切ではありません。昇進、転職、投資、資格取得などは現実的な収入増加の手段ですが、宝くじは確実性が低いです。"
        ),
        QuizQuestion(
            question: "教育資金を計画的に準備するために一般的に利用される金融商品はどれですか？",
            choices: [
                "株式",
                "不動産投資",
                "学資保険",
                "仮想通貨",
            ],
            correctAnswerIndex: 2,
            explanation: "教育資金を計画的に準備するために一般的に利用される金融商品は学資保険です。学資保険は一定の期間ごとに積み立て、満期時に教育資金として受け取ることができるため、安定した資金準備が可能です。"
        ),
        QuizQuestion(
            question: "老後資金を準備するために、定年退職前に行うべき最も重要なことはどれですか？",
            choices: [
                "旅行の計画を立てる",
                "趣味を増やす",
                "貯蓄と投資の計画を立てる",
                "新しい車を購入する",
            ],
            correctAnswerIndex: 2,
            explanation: "老後資金を準備するためには、定年退職前に貯蓄と投資の計画を立てることが最も重要です。将来の収入と支出を見積もり、必要な資金を計画的に準備することが必要です。"
        ),
        QuizQuestion(
            question: "ライフプランニングの一環として、家計の見直しを行う際に最初に確認するべき項目はどれですか？",
            choices: [
                "毎月の収入",
                "趣味の支出",
                "旅行費用",
                "子供の教育費",
            ],
            correctAnswerIndex: 0,
            explanation: "家計の見直しを行う際には、まず毎月の収入を確認することが重要です。収入を把握した上で、支出の項目を見直し、無駄を削減する計画を立てます。"
        ),
        QuizQuestion(
            question: "資産運用のリスク分散を図るために推奨される方法はどれですか？",
            choices: [
                "一つの銘柄に集中投資する",
                "複数の銘柄に分散投資する",
                "高リスク商品に全額投資する",
                "現金を全て預金する",
            ],
            correctAnswerIndex: 1,
            explanation: "資産運用のリスク分散を図るためには、複数の銘柄に分散投資することが推奨されます。これにより、一つの銘柄の価格変動リスクを軽減し、全体のリスクを抑えることができます。"
        ),
        QuizQuestion(
            question: "教育費のための積立方法として適切でないものはどれですか？",
            choices: [
                "学資保険",
                "定期預金",
                "国債",
                "高利率の借入金"
            ],
            correctAnswerIndex: 3,
            explanation: "教育費のための積立方法として、高利率の借入金は適切ではありません。高利率の借入金は返済の負担が大きくなるため、学資保険や定期預金、国債などの安定した方法が適しています。"
        ),
        QuizQuestion(
            question: "ライフプランニングの重要な要素として、最も適切でないものはどれですか？",
            choices: [
                "収入と支出のバランス",
                "将来の目標設定",
                "リスク管理",
                "趣味の充実"
            ],
            correctAnswerIndex: 3,
            explanation: "ライフプランニングの重要な要素には、収入と支出のバランス、将来の目標設定、リスク管理、健康状態の維持が含まれますが、趣味の充実は他の要素ほど重要ではありません。"
        ),
        QuizQuestion(
            question: "ライフプランニングにおいて、定期的に見直すべき項目はどれですか？",
            choices: [
                "年齢",
                "収入と支出",
                "趣味",
                "交友関係",
            ],
            correctAnswerIndex: 1,
            explanation: "ライフプランニングにおいて、定期的に見直すべき項目は収入と支出です。収入や支出はライフステージによって変動するため、定期的な見直しが必要です。"
        ),
        QuizQuestion(
            question: "ファイナンシャルプランナーの主な役割として正しいものはどれですか？",
            choices: [
                "住宅の設計",
                "法律相談",
                "資産運用のアドバイス",
                "不動産の売買",
            ],
            correctAnswerIndex: 2,
            explanation: "ファイナンシャルプランナーの主な役割は、資産運用のアドバイスを行うことです。その他にも保険の見直しやライフプランニングなど、総合的な資産管理をサポートします。"
        ),
        QuizQuestion(
            question: "確定拠出年金の特徴として誤っているものはどれですか？",
            choices: [
                "運用結果に応じて将来の年金額が変動する",
                "加入者自身が運用方法を選択する",
                "運用リスクは全て加入者が負う",
                "年金額は事前に確定している",
            ],
            correctAnswerIndex: 3,
            explanation: "確定拠出年金の年金額は運用結果によって変動するため、事前に確定しているわけではありません。加入者自身が運用方法を選択し、運用リスクも負う形になります。"
        ),
        QuizQuestion(
            question: "公的年金の受給資格を得るために必要な最低加入期間はどれですか？",
            choices: [
                "5年",
                "10年",
                "15年",
                "20年",
            ],
            correctAnswerIndex: 1,
            explanation: "公的年金の受給資格を得るためには、最低10年間の加入期間が必要です。この期間を満たしていることで、老齢年金の受給資格を得ることができます。"
        ),
        QuizQuestion(
            question: "教育資金を効率よく貯めるための方法として適切でないものはどれですか？",
            choices: [
                "学資保険に加入する",
                "定期預金に積み立てる",
                "株式投資を行う",
                "個人向け国債を購入する",
            ],
            correctAnswerIndex: 2,
            explanation: "教育資金を効率よく貯めるための方法として、株式投資は適切ではありません。株式投資はリスクが高く、安定した資金準備には向いていません。"
        )

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
        QuizView(quizzes: shuffledQuizList, quizLevel: .Tango3, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizTang3List_Previews: PreviewProvider {
    static var previews: some View {
        QuizTango3List(isPresenting: .constant(false))
    }
}
