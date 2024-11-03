//
//  QuizToeicTangoBeginnerList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizToeicTangoBeginnerList: View {
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
            question: "遺言書の有効性を確保するために必要な要件はどれですか？",
            choices: [
              "遺言者の署名と日付",
              "遺言者の署名と押印",
              "遺言者の署名と証人の署名",
              "遺言者の署名と公証人の署名"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言書の有効性を確保するためには、遺言者の署名と日付が必要です。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度において、贈与者が死亡した場合、残された贈与財産はどのように扱われますか？",
            choices: [
              "相続税の対象になる",
              "贈与税の対象になる",
              "非課税扱いになる",
              "課税されない"
            ],
            correctAnswerIndex: 0,
            explanation: "相続時精算課税制度では、贈与者が死亡した場合、残された贈与財産は相続税の対象になります。"
        ),
        QuizQuestion(
            question: "相続放棄をした相続人が再度相続を受けることができる条件として正しいものはどれですか？",
            choices: [
              "遺言によって指名された場合",
              "他の相続人の同意がある場合",
              "家庭裁判所の許可がある場合",
              "再度相続を受けることはできない"
            ],
            correctAnswerIndex: 3,
            explanation: "相続放棄をした相続人は、再度相続を受けることはできません。"
        ),
        QuizQuestion(
            question: "相続税の特例の一つである「小規模宅地等の特例」の対象となる土地の要件はどれですか？",
            choices: [
              "被相続人が生前に使用していた宅地",
              "相続人が相続開始後に使用する宅地",
              "被相続人が生前に賃貸していた宅地",
              "相続人が相続開始後に売却する宅地"
            ],
            correctAnswerIndex: 0,
            explanation: "「小規模宅地等の特例」は、被相続人が生前に使用していた宅地が対象となります。"
        ),
        QuizQuestion(
            question: "相続財産の中で、評価が特に難しいとされるものはどれですか？",
            choices: [
              "現金",
              "上場株式",
              "未上場株式",
              "不動産"
            ],
            correctAnswerIndex: 2,
            explanation: "未上場株式は相続財産の中で評価が特に難しいとされています。"
        ),
        QuizQuestion(
            question: "被相続人が自筆証書遺言を作成する際に必要な要件はどれですか？",
            choices: [
              "遺言者の署名と押印",
              "遺言者の署名と日付",
              "遺言者の押印と証人の署名",
              "遺言者の署名と日付と押印"
            ],
            correctAnswerIndex: 3,
            explanation: "自筆証書遺言には、遺言者の署名と日付と押印が必要です。"
        ),
        QuizQuestion(
            question: "相続税の申告期限を過ぎた場合に適用される延滞税の率はどのように決まりますか？",
            choices: [
              "固定の税率",
              "国税庁が決定する税率",
              "納税者が自由に決定する税率",
              "市場金利に基づく税率"
            ],
            correctAnswerIndex: 1,
            explanation: "延滞税の率は国税庁が決定します。"
        ),
        QuizQuestion(
            question: "相続人のうち未成年者がいる場合の特別代理人の選任について正しい説明はどれですか？",
            choices: [
              "未成年者の法定代理人が特別代理人を選任する",
              "家庭裁判所が特別代理人を選任する",
              "未成年者本人が特別代理人を選任する",
              "相続人全員で特別代理人を選任する"
            ],
            correctAnswerIndex: 1,
            explanation: "未成年者が相続人の場合、家庭裁判所が特別代理人を選任します。"
        ),
        QuizQuestion(
            question: "相続財産に含まれないものはどれですか？",
            choices: [
              "被相続人名義の預金",
              "被相続人名義の不動産",
              "被相続人の死亡保険金",
              "被相続人名義の株式"
            ],
            correctAnswerIndex: 2,
            explanation: "死亡保険金は受取人が指定されている場合、相続財産に含まれません。"
        ),
        QuizQuestion(
            question: "相続税の基礎控除額はどのように計算されますか？",
            choices: [
              "3,000万円 + 600万円 × 法定相続人の数",
              "3,600万円 + 600万円 × 法定相続人の数",
              "4,200万円 + 600万円 × 法定相続人の数",
              "5,000万円 + 600万円 × 法定相続人の数"
            ],
            correctAnswerIndex: 0,
            explanation: "相続税の基礎控除額は「3,000万円 + 600万円 × 法定相続人の数」で計算されます。"
        ),
        QuizQuestion(
            question: "法定相続人がいない場合、相続財産はどのように処理されますか？",
            choices: [
              "国庫に帰属する",
              "地方自治体に帰属する",
              "家庭裁判所が管理する",
              "遺言執行者が管理する"
            ],
            correctAnswerIndex: 0,
            explanation: "法定相続人がいない場合、相続財産は国庫に帰属します。"
        ),
        QuizQuestion(
            question: "相続財産の評価方法として正しいものはどれですか？",
            choices: [
              "不動産は固定資産税評価額で評価される",
              "上場株式は相続開始日の終値で評価される",
              "預貯金は相続開始日現在の残高で評価される",
              "死亡保険金は支払われた金額で評価される"
            ],
            correctAnswerIndex: 2,
            explanation: "預貯金は相続開始日現在の残高で評価されます。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度の適用を受けるためには、どのような手続きを行う必要がありますか？",
            choices: [
              "家庭裁判所での申請",
              "税務署での申告",
              "公証役場での手続き",
              "市役所での届出"
            ],
            correctAnswerIndex: 1,
            explanation: "相続時精算課税制度の適用を受けるためには、税務署での申告が必要です。"
        ),
        QuizQuestion(
            question: "被相続人が遺言書を残していない場合、遺産分割の方法として最も適切なものはどれですか？",
            choices: [
              "家庭裁判所の判断に従う",
              "相続人全員で協議して決定する",
              "市区町村の役所で手続きを行う",
              "遺言執行者が決定する"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書がない場合、遺産分割は相続人全員で協議して決定する必要があります。"
        ),
        QuizQuestion(
            question: "遺言執行者の役割として正しいものはどれですか？",
            choices: [
              "遺産分割協議を行う",
              "遺言の内容を実現する",
              "相続税の申告を行う",
              "相続人の選定を行う"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言執行者の役割は、遺言の内容を実現することです。"
        ),
        QuizQuestion(
            question: "相続放棄が認められない場合はどれですか？",
            choices: [
              "相続財産を一部でも処分した場合",
              "相続人が死亡した場合",
              "相続人が行方不明の場合",
              "相続人が未成年の場合"
            ],
            correctAnswerIndex: 0,
            explanation: "相続財産を一部でも処分した場合、相続放棄は認められません。"
        ),
        QuizQuestion(
            question: "遺産分割協議において、全ての相続人の同意が必要とされる理由として最も適切なものはどれですか？",
            choices: [
              "法律で定められているため",
              "相続人全員の権利を守るため",
              "税務署の指示に従うため",
              "遺産の価値を最大化するため"
            ],
            correctAnswerIndex: 1,
            explanation: "遺産分割協議は相続人全員の同意がなければ有効にならないため、相続人全員の権利を守るためです。"
        ),
        QuizQuestion(
            question: "相続税の特例として、配偶者に対する相続税額の軽減について正しい説明はどれですか？",
            choices: [
              "配偶者が相続した財産の全てが対象",
              "配偶者が相続した財産のうち一定額が対象",
              "配偶者が相続した財産のうち1億6千万円までが対象",
              "配偶者が相続した財産のうち1億円までが対象"
            ],
            correctAnswerIndex: 2,
            explanation: "配偶者が相続した財産のうち1億6千万円までは相続税が軽減される特例があります。"
        ),
        QuizQuestion(
            question: "相続税の納付方法として適切なものはどれですか？",
            choices: [
              "現金のみ",
              "現金および物納",
              "物納のみ",
              "現金、物納および分納"
            ],
            correctAnswerIndex: 3,
            explanation: "相続税の納付方法には、現金、物納および分納があります。"
        ),
        QuizQuestion(
            question: "相続税の計算において、配偶者が受け取る相続財産に適用される特例はどれですか？",
            choices: [
              "配偶者控除",
              "基礎控除",
              "配偶者特例控除",
              "生前贈与控除"
            ],
            correctAnswerIndex: 0,
            explanation: "相続税の計算において、配偶者が受け取る相続財産には配偶者控除が適用されます。"
        ),
        QuizQuestion(
            question: "相続財産の中で、非課税となるものはどれですか？",
            choices: [
              "被相続人名義の預金",
              "被相続人名義の不動産",
              "被相続人の死亡保険金",
              "被相続人名義の株式"
            ],
            correctAnswerIndex: 2,
            explanation: "被相続人の死亡保険金は、一定の非課税限度額内で非課税となります。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度を利用するための要件として正しいものはどれですか？",
            choices: [
              "贈与者が70歳以上であること",
              "受贈者が20歳以上であること",
              "贈与者が50歳以上であること",
              "受贈者が30歳以上であること"
            ],
            correctAnswerIndex: 1,
            explanation: "相続時精算課税制度を利用するためには、受贈者が20歳以上であることが必要です。"
        ),
        QuizQuestion(
            question: "遺言書が有効であるために必要な条件はどれですか？",
            choices: [
              "遺言者の署名と押印があること",
              "証人2人以上の立会いがあること",
              "遺言者の署名と証人1人以上の署名があること",
              "遺言者の署名と家庭裁判所の承認があること"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書が有効であるためには、証人2人以上の立会いが必要です。"
        ),
        QuizQuestion(
            question: "被相続人が遺言書を残していない場合、遺産分割の方法として最も適切なものはどれですか？",
            choices: [
              "家庭裁判所の判断に従う",
              "相続人全員で協議して決定する",
              "市区町村の役所で手続きを行う",
              "遺言執行者が決定する"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書がない場合、遺産分割は相続人全員で協議して決定する必要があります。"
        ),
        QuizQuestion(
            question: "相続税の納付方法として正しいものはどれですか？",
            choices: [
              "一括納付のみ",
              "分割納付のみ",
              "一括納付と分割納付の選択が可能",
              "納付の必要がない"
            ],
            correctAnswerIndex: 2,
            explanation: "相続税の納付方法には、一括納付と分割納付の選択が可能です。"
        ),
        QuizQuestion(
            question: "遺留分減殺請求権を行使できる期間はどれですか？",
            choices: [
              "遺言書が開封されてから1年以内",
              "相続開始を知った日から6ヶ月以内",
              "相続開始を知った日から1年以内",
              "相続開始を知った日から3年以内"
            ],
            correctAnswerIndex: 2,
            explanation: "遺留分減殺請求権は、相続開始を知った日から1年以内に行使する必要があります。"
        ),
        QuizQuestion(
            question: "事業承継において、後継者が事業を円滑に引き継ぐために必要な手続きとして適切でないものはどれですか？",
            choices: [
              "経営者保証の解除",
              "後継者の選定と育成",
              "相続税の納税資金の確保",
              "従業員全員への事前通知"
            ],
            correctAnswerIndex: 3,
            explanation: "従業員全員への事前通知は重要ですが、必ずしも事業承継における手続きとして必要ではありません。"
        ),
        QuizQuestion(
            question: "相続税の申告期限は、被相続人の死亡後どのくらいですか？",
            choices: [
              "3ヶ月以内",
              "6ヶ月以内",
              "10ヶ月以内",
              "1年以内"
            ],
            correctAnswerIndex: 2,
            explanation: "相続税の申告期限は、被相続人の死亡後10ヶ月以内です。"
        ),
        QuizQuestion(
            question: "遺産分割協議書に署名・押印する際、相続人が未成年の場合、代わりに誰が署名・押印する必要がありますか？",
            choices: [
              "未成年者本人",
              "未成年者の法定代理人",
              "家庭裁判所の裁判官",
              "相続財産管理人"
            ],
            correctAnswerIndex: 1,
            explanation: "未成年者が相続人の場合、その法定代理人（通常は親）が遺産分割協議書に署名・押印します。"
        ),
        QuizQuestion(
            question: "遺言書が無効となる場合はどれですか？",
            choices: [
              "遺言者が署名していない場合",
              "遺言書に日付が記載されていない場合",
              "遺言書が複数枚にわたる場合",
              "遺言書が鉛筆で書かれている場合"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書に日付が記載されていない場合、遺言書は無効となります。"
        ),
        QuizQuestion(
            question: "遺言執行者が選任されていない場合の遺言執行の手続きとして正しいものはどれですか？",
            choices: [
              "家庭裁判所が遺言執行者を選任する",
              "相続人全員で遺言を執行する",
              "遺言執行者が不要である",
              "公証人が遺言を執行する"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言執行者が選任されていない場合、家庭裁判所が遺言執行者を選任します。"
        ),
        QuizQuestion(
            question: "相続財産の評価方法として正しいものはどれですか？",
            choices: [
              "不動産は固定資産税評価額で評価される",
              "上場株式は相続開始日の終値で評価される",
              "預貯金は相続開始日現在の残高で評価される",
              "死亡保険金は支払われた金額で評価される"
            ],
            correctAnswerIndex: 2,
            explanation: "預貯金は相続開始日現在の残高で評価されます。"
        ),
        QuizQuestion(
            question: "相続放棄をすることによって生じる結果として正しいものはどれですか？",
            choices: [
              "放棄した相続人は最初から相続人でなかったとみなされる",
              "放棄した相続人は相続財産を放棄するだけで債務を引き継ぐ",
              "放棄した相続人は相続税の支払い義務がなくなる",
              "放棄した相続人は遺留分を請求できる"
            ],
            correctAnswerIndex: 0,
            explanation: "相続放棄をした場合、放棄した相続人は最初から相続人でなかったとみなされます。"
        ),
        QuizQuestion(
            question: "遺留分とは何ですか？",
            choices: [
              "法定相続分の一部",
              "相続税の控除額",
              "遺言書の一部",
              "相続人の全員に保証された最低限の取り分"
            ],
            correctAnswerIndex: 3,
            explanation: "遺留分は、相続人全員に保証された最低限の取り分です。"
        ),
        QuizQuestion(
            question: "被相続人が生命保険を契約していた場合、保険金の受取人が相続人でない場合の保険金の扱いとして正しいものはどれですか？",
            choices: [
              "相続財産に含まれる",
              "相続財産に含まれない",
              "受取人の財産に含まれる",
              "受取人の所得に含まれる"
            ],
            correctAnswerIndex: 2,
            explanation: "保険金の受取人が相続人でない場合、その保険金は受取人の財産に含まれます。"
        ),
        QuizQuestion(
            question: "遺留分減殺請求権の行使期間として正しいものはどれですか？",
            choices: [
              "相続開始を知った時から3ヶ月以内",
              "相続開始を知った時から1年以内",
              "相続開始を知った時から3年以内",
              "相続開始を知った時から5年以内"
            ],
            correctAnswerIndex: 1,
            explanation: "遺留分減殺請求権の行使期間は相続開始を知った時から1年以内です。"
        ),
        QuizQuestion(
            question: "相続税の延滞税はどのように計算されますか？",
            choices: [
              "固定税率で計算される",
              "納税額に基づいて日割りで計算される",
              "市場金利に基づいて計算される",
              "国税庁が決定する税率で計算される"
            ],
            correctAnswerIndex: 1,
            explanation: "相続税の延滞税は、納税額に基づいて日割りで計算されます。"
        ),
        QuizQuestion(
            question: "相続放棄をする際の申請先はどこですか？",
            choices: [
              "市役所",
              "家庭裁判所",
              "税務署",
              "公証役場"
            ],
            correctAnswerIndex: 1,
            explanation: "相続放棄をする際には、家庭裁判所に申請します。"
        ),
        QuizQuestion(
            question: "相続税の申告書を提出する必要があるのは、相続が発生してから何日以内ですか？",
            choices: [
              "3ヶ月",
              "6ヶ月",
              "10ヶ月",
              "1年"
            ],
            correctAnswerIndex: 2,
            explanation: "相続税の申告書は、相続が発生してから10ヶ月以内に提出する必要があります。"
        ),
        QuizQuestion(
            question: "遺産分割協議が成立しない場合の最終的な解決方法はどれですか？",
            choices: [
              "相続人全員の多数決",
              "家庭裁判所の審判",
              "市役所の調停",
              "税務署の調停"
            ],
            correctAnswerIndex: 1,
            explanation: "遺産分割協議が成立しない場合は、家庭裁判所の審判によって最終的に解決されます。"
        ),
        QuizQuestion(
            question: "相続人が相続放棄をした場合、その相続人の子供の相続権はどうなりますか？",
            choices: [
              "子供に相続権が移る",
              "子供も相続放棄とみなされる",
              "他の相続人に相続権が移る",
              "子供が相続権を持つ"
            ],
            correctAnswerIndex: 1,
            explanation: "相続人が相続放棄をした場合、その子供も相続放棄とみなされます。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度の適用を受けるためには、どのような手続きを行う必要がありますか？",
            choices: [
              "家庭裁判所での申請",
              "税務署での申告",
              "公証役場での手続き",
              "市役所での届出"
            ],
            correctAnswerIndex: 1,
            explanation: "相続時精算課税制度の適用を受けるためには、税務署での申告が必要です。"
        ),
        QuizQuestion(
            question: "被相続人の死亡保険金が相続財産に含まれる場合の条件として正しいものはどれですか？",
            choices: [
              "受取人が指定されていない場合",
              "受取人が配偶者の場合",
              "受取人が子供の場合",
              "受取人が相続人以外の場合"
            ],
            correctAnswerIndex: 0,
            explanation: "受取人が指定されていない場合、死亡保険金は相続財産に含まれます。"
        ),
        QuizQuestion(
            question: "遺言書が有効となるために必要な条件はどれですか？",
            choices: [
              "公証人の立会い",
              "家庭裁判所の承認",
              "証人2人の立会い",
              "税務署の承認"
            ],
            correctAnswerIndex: 2,
            explanation: "遺言書が有効となるためには、証人2人の立会いが必要です。"
        ),
        QuizQuestion(
            question: "遺産分割の方法として最も適切なものはどれですか？",
            choices: [
              "家庭裁判所の判断に従う",
              "相続人全員で協議して決定する",
              "市区町村の役所で手続きを行う",
              "遺言執行者が決定する"
            ],
            correctAnswerIndex: 1,
            explanation: "遺産分割は相続人全員で協議して決定することが最も適切です。"
        ),
        QuizQuestion(
            question: "事業承継計画を立てる際に最も重要なことはどれですか？",
            choices: [
              "後継者の選定と育成",
              "事業内容の変更",
              "新しい事業計画の策定",
              "従業員の解雇"
            ],
            correctAnswerIndex: 0,
            explanation: "事業承継計画を立てる際には、後継者の選定と育成が最も重要です。"
        ),
        QuizQuestion(
            question: "相続税の延滞税はどのように計算されますか？",
            choices: [
              "固定税率で計算される",
              "納税額に基づいて日割りで計算される",
              "市場金利に基づいて計算される",
              "国税庁が決定する税率で計算される"
            ],
            correctAnswerIndex: 1,
            explanation: "相続税の延滞税は、納税額に基づいて日割りで計算されます。"
        ),
        QuizQuestion(
            question: "相続放棄をする際の申請先はどこですか？",
            choices: [
              "市役所",
              "家庭裁判所",
              "税務署",
              "公証役場"
            ],
            correctAnswerIndex: 1,
            explanation: "相続放棄をする際には、家庭裁判所に申請します。"
        ),
        QuizQuestion(
            question: "遺留分とは何ですか？",
            choices: [
              "法定相続分の一部",
              "相続税の控除額",
              "遺言書の一部",
              "相続人の全員に保証された最低限の取り分"
            ],
            correctAnswerIndex: 3,
            explanation: "遺留分は、相続人全員に保証された最低限の取り分です。"
        ),
        QuizQuestion(
            question: "相続財産の評価方法として正しいものはどれですか？",
            choices: [
              "不動産は固定資産税評価額で評価される",
              "上場株式は相続開始日の終値で評価される",
              "預貯金は相続開始日現在の残高で評価される",
              "死亡保険金は支払われた金額で評価される"
            ],
            correctAnswerIndex: 2,
            explanation: "預貯金は相続開始日現在の残高で評価されます。"
        ),
        QuizQuestion(
            question: "遺言書の効力を発生させるためには、以下のうちどの方法が必要ですか？",
            choices: [
              "家庭裁判所での検認",
              "公証人による作成",
              "弁護士の署名",
              "税務署への届け出"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言書の効力を発生させるためには、家庭裁判所での検認が必要です。"
        ),
        QuizQuestion(
            question: "相続税の基礎控除額はどのように計算されますか？",
            choices: [
              "3,000万円 + 600万円 × 法定相続人の数",
              "3,600万円 + 600万円 × 法定相続人の数",
              "4,200万円 + 600万円 × 法定相続人の数",
              "5,000万円 + 600万円 × 法定相続人の数"
            ],
            correctAnswerIndex: 0,
            explanation: "相続税の基礎控除額は「3,000万円 + 600万円 × 法定相続人の数」で計算されます。"
        ),
        QuizQuestion(
            question: "相続財産の中で特に評価が難しいものはどれですか？",
            choices: [
              "現金",
              "上場株式",
              "未上場株式",
              "不動産"
            ],
            correctAnswerIndex: 2,
            explanation: "未上場株式は評価が難しい相続財産の一つです。"
        ),
        QuizQuestion(
            question: "遺産分割協議書に署名・押印する際、相続人が未成年の場合、代わりに誰が署名・押印する必要がありますか？",
            choices: [
              "未成年者本人",
              "未成年者の法定代理人",
              "家庭裁判所の裁判官",
              "相続財産管理人"
            ],
            correctAnswerIndex: 1,
            explanation: "未成年者が相続人の場合、その法定代理人（通常は親）が遺産分割協議書に署名・押印します。"
        ),
        QuizQuestion(
            question: "遺留分減殺請求権を行使できる期間はどれですか？",
            choices: [
              "遺言書が開封されてから1年以内",
              "相続開始を知った日から6ヶ月以内",
              "相続開始を知った日から1年以内",
              "相続開始を知った日から3年以内"
            ],
            correctAnswerIndex: 2,
            explanation: "遺留分減殺請求権は、相続開始を知った日から1年以内に行使する必要があります。"
        ),
        QuizQuestion(
            question: "相続人が行方不明の場合の相続手続きとして正しいものはどれですか？",
            choices: [
              "相続分を他の相続人に分配する",
              "家庭裁判所に不在者財産管理人の選任を申し立てる",
              "市区町村の役所に届け出る",
              "相続手続きを中止する"
            ],
            correctAnswerIndex: 1,
            explanation: "相続人が行方不明の場合、家庭裁判所に不在者財産管理人の選任を申し立てる必要があります。"
        ),
        QuizQuestion(
            question: "遺産分割の際、配偶者の法定相続分が2分の1となる場合はどれですか？",
            choices: [
              "配偶者と子供が相続人である場合",
              "配偶者と父母が相続人である場合",
              "配偶者と兄弟姉妹が相続人である場合",
              "配偶者のみが相続人である場合"
            ],
            correctAnswerIndex: 0,
            explanation: "配偶者と子供が相続人となる場合、配偶者の法定相続分は2分の1となります。"
        ),
        QuizQuestion(
            question: "相続税の課税価格の計算において控除されるものはどれですか？",
            choices: [
              "被相続人の借入金",
              "被相続人の生命保険金",
              "被相続人の株式配当金",
              "被相続人の退職金"
            ],
            correctAnswerIndex: 0,
            explanation: "相続税の課税価格の計算において、被相続人の借入金は控除されます。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度の非課税枠はいくらですか？",
            choices: [
              "500万円",
              "1,000万円",
              "2,500万円",
              "3,000万円"
            ],
            correctAnswerIndex: 3,
            explanation: "相続時精算課税制度の非課税枠は3,000万円です。"
        ),
        QuizQuestion(
            question: "被相続人が自筆証書遺言を作成する際に必要な要件はどれですか？",
            choices: [
              "遺言者の署名と押印",
              "遺言者の署名と日付",
              "遺言者の押印と証人の署名",
              "遺言者の署名と日付と押印"
            ],
            correctAnswerIndex: 3,
            explanation: "自筆証書遺言には、遺言者の署名と日付と押印が必要です。"
        ),
        QuizQuestion(
            question: "相続税の申告期限を過ぎた場合に適用される延滞税の率はどのように決まりますか？",
            choices: [
              "固定の税率",
              "国税庁が決定する税率",
              "納税者が自由に決定する税率",
              "市場金利に基づく税率"
            ],
            correctAnswerIndex: 1,
            explanation: "延滞税の率は国税庁が決定します。"
        ),
        QuizQuestion(
            question: "遺留分減殺請求権の行使期間として正しいものはどれですか？",
            choices: [
              "相続開始を知った時から3ヶ月以内",
              "相続開始を知った時から1年以内",
              "相続開始を知った時から3年以内",
              "相続開始を知った時から5年以内"
            ],
            correctAnswerIndex: 1,
            explanation: "遺留分減殺請求権の行使期間は相続開始を知った時から1年以内です。"
        ),
        QuizQuestion(
            question: "事業承継計画において重要な要素はどれですか？",
            choices: [
              "後継者の選定と育成",
              "従業員の解雇",
              "経営方針の変更",
              "事業内容の縮小"
            ],
            correctAnswerIndex: 0,
            explanation: "事業承継計画においては、後継者の選定と育成が重要な要素です。"
        ),
        QuizQuestion(
            question: "遺産分割協議が成立しない場合の対処方法として適切なものはどれですか？",
            choices: [
              "相続人の代表が決定する",
              "遺言執行者が決定する",
              "家庭裁判所に調停を申し立てる",
              "市役所に相談する"
            ],
            correctAnswerIndex: 2,
            explanation: "遺産分割協議が成立しない場合は、家庭裁判所に調停を申し立てることが適切です。"
        ),
        QuizQuestion(
            question: "遺留分を侵害する遺贈があった場合、相続人はどのような手続きを行うべきですか？",
            choices: [
              "家庭裁判所に遺言無効確認を求める",
              "税務署に遺言無効確認を求める",
              "家庭裁判所に遺留分減殺請求を行う",
              "税務署に遺留分減殺請求を行う"
            ],
            correctAnswerIndex: 2,
            explanation: "遺留分を侵害する遺贈があった場合、相続人は家庭裁判所に遺留分減殺請求を行うべきです。"
        ),
        QuizQuestion(
            question: "被相続人が残した負債について、相続人が取るべき対応として正しいものはどれですか？",
            choices: [
              "全額返済を行う",
              "相続放棄を検討する",
              "負債を他の相続人に譲渡する",
              "負債の一部を返済する"
            ],
            correctAnswerIndex: 1,
            explanation: "被相続人が残した負債については、相続放棄を検討することが正しい対応の一つです。"
        ),
        QuizQuestion(
            question: "相続税の納付方法として適切なものはどれですか？",
            choices: [
              "現金のみ",
              "現金および物納",
              "物納のみ",
              "現金、物納および分納"
            ],
            correctAnswerIndex: 3,
            explanation: "相続税の納付方法には、現金、物納および分納があります。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度の適用を受けるための申告期限は、贈与が行われた年の翌年の何月までですか？",
            choices: [
              "1月",
              "3月",
              "6月",
              "12月"
            ],
            correctAnswerIndex: 1,
            explanation: "相続時精算課税制度の適用を受けるための申告期限は、贈与が行われた年の翌年の3月15日までです。"
        ),
        QuizQuestion(
            question: "相続放棄をする際に必要な手続きはどれですか？",
            choices: [
              "公証役場で手続きを行う",
              "家庭裁判所で手続きを行う",
              "税務署で手続きを行う",
              "市役所で手続きを行う"
            ],
            correctAnswerIndex: 1,
            explanation: "相続放棄をする際には、家庭裁判所で手続きを行う必要があります。"
        ),
        QuizQuestion(
            question: "遺言書が無効となる場合はどれですか？",
            choices: [
              "遺言者が署名していない場合",
              "遺言書に日付が記載されていない場合",
              "遺言書が複数枚にわたる場合",
              "遺言書が鉛筆で書かれている場合"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書に日付が記載されていない場合、遺言書は無効となります。"
        ),
        QuizQuestion(
            question: "被相続人が生命保険を契約していた場合、保険金の受取人が相続人でない場合の保険金の扱いとして正しいものはどれですか？",
            choices: [
              "相続財産に含まれる",
              "相続財産に含まれない",
              "受取人の財産に含まれる",
              "受取人の所得に含まれる"
            ],
            correctAnswerIndex: 2,
            explanation: "保険金の受取人が相続人でない場合、その保険金は受取人の財産に含まれます。"
        ),
        QuizQuestion(
            question: "遺産分割の際、相続人が未成年の場合に必要な手続きとして正しいものはどれですか？",
            choices: [
              "相続人全員の同意を得る",
              "家庭裁判所の許可を得る",
              "未成年者本人の同意を得る",
              "相続人全員で協議する"
            ],
            correctAnswerIndex: 1,
            explanation: "相続人が未成年の場合、遺産分割の際には家庭裁判所の許可を得る必要があります。"
        ),
        QuizQuestion(
            question: "遺言執行者が選任されていない場合の遺言執行の手続きとして正しいものはどれですか？",
            choices: [
              "家庭裁判所が遺言執行者を選任する",
              "相続人全員で遺言を執行する",
              "遺言執行者が不要である",
              "公証人が遺言を執行する"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言執行者が選任されていない場合、家庭裁判所が遺言執行者を選任します。"
        ),
        QuizQuestion(
            question: "相続税の特例として、配偶者に対する相続税額の軽減について正しい説明はどれですか？",
            choices: [
              "配偶者が相続した財産の全てが対象",
              "配偶者が相続した財産のうち一定額が対象",
              "配偶者が相続した財産のうち1億6千万円までが対象",
              "配偶者が相続した財産のうち1億円までが対象"
            ],
            correctAnswerIndex: 2,
            explanation: "配偶者が相続した財産のうち1億6千万円までは相続税が軽減される特例があります。"
        ),
        QuizQuestion(
            question: "相続人が複数いる場合、相続税の納税義務はどのように決定されますか？",
            choices: [
              "相続財産の額に応じて相続人全員が均等に納税する",
              "相続財産を取得した額に応じて各相続人が納税する",
              "相続人代表が一括で納税する",
              "被相続人の配偶者が全額納税する"
            ],
            correctAnswerIndex: 1,
            explanation: "相続人が複数いる場合、相続財産を取得した額に応じて各相続人が納税義務を負います。"
        ),
        QuizQuestion(
            question: "相続人が行方不明の場合、どのような手続きを行うべきですか？",
            choices: [
              "他の相続人で遺産分割協議を行う",
              "家庭裁判所に失踪宣告の申し立てを行う",
              "相続人全員で行方不明者の捜索を行う",
              "遺産分割を中止する"
            ],
            correctAnswerIndex: 1,
            explanation: "相続人が行方不明の場合、家庭裁判所に失踪宣告の申し立てを行うことができます。"
        ),
        QuizQuestion(
            question: "事業承継の際、株式を後継者に贈与する方法として最も適切なものはどれですか？",
            choices: [
              "贈与契約書を作成する",
              "株主総会で承認を得る",
              "取締役会で承認を得る",
              "公証役場で贈与契約を結ぶ"
            ],
            correctAnswerIndex: 0,
            explanation: "事業承継の際、株式を後継者に贈与する場合、贈与契約書を作成することが一般的です。"
        ),
        QuizQuestion(
            question: "遺言書の種類として正しいものはどれですか？",
            choices: [
              "自筆証書遺言、公正証書遺言、秘密証書遺言",
              "自筆証書遺言、口述証書遺言、公正証書遺言",
              "秘密証書遺言、認証証書遺言、口述証書遺言",
              "認証証書遺言、口述証書遺言、公正証書遺言"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言書には、自筆証書遺言、公正証書遺言、秘密証書遺言の3種類があります。"
        ),
        QuizQuestion(
            question: "法定相続分に関して正しい説明はどれですか？",
            choices: [
              "配偶者と子供が相続人の場合、配偶者の相続分は2分の1、子供の相続分は2分の1です。",
              "配偶者と父母が相続人の場合、配偶者の相続分は3分の2、父母の相続分は3分の1です。",
              "配偶者と兄弟姉妹が相続人の場合、配偶者の相続分は3分の1、兄弟姉妹の相続分は3分の2です。",
              "配偶者と子供が相続人の場合、配偶者の相続分は3分の2、子供の相続分は3分の1です。"
            ],
            correctAnswerIndex: 0,
            explanation: "配偶者と子供が相続人の場合、配偶者の相続分は2分の1、子供の相続分は2分の1です。"
        ),
        QuizQuestion(
            question: "相続財産の評価方法として正しいものはどれですか？",
            choices: [
              "不動産は固定資産税評価額で評価される",
              "上場株式は相続開始日の終値で評価される",
              "預貯金は相続開始日現在の残高で評価される",
              "死亡保険金は支払われた金額で評価される"
            ],
            correctAnswerIndex: 2,
            explanation: "預貯金は相続開始日現在の残高で評価されます。"
        ),
        QuizQuestion(
            question: "相続人のうち未成年者がいる場合の特別代理人の選任について正しい説明はどれですか？",
            choices: [
              "未成年者の法定代理人が特別代理人を選任する",
              "家庭裁判所が特別代理人を選任する",
              "未成年者本人が特別代理人を選任する",
              "相続人全員で特別代理人を選任する"
            ],
            correctAnswerIndex: 1,
            explanation: "未成年者が相続人の場合、家庭裁判所が特別代理人を選任します。"
        ),
        QuizQuestion(
            question: "事業承継において、後継者育成のために最も重要なことはどれですか？",
            choices: [
              "後継者に全ての決定権を与える",
              "後継者に経営の実務経験を積ませる",
              "後継者に経営に関与させない",
              "後継者に株式を全て譲渡する"
            ],
            correctAnswerIndex: 1,
            explanation: "後継者が事業を円滑に引き継ぐためには、経営の実務経験を積ませることが重要です。"
        ),
        QuizQuestion(
            question: "相続税の申告に必要な書類として正しいものはどれですか？",
            choices: [
              "被相続人の死亡診断書",
              "被相続人の戸籍謄本",
              "被相続人の遺言書",
              "被相続人の納税証明書"
            ],
            correctAnswerIndex: 1,
            explanation: "相続税の申告には、被相続人の戸籍謄本が必要です。"
        ),
        QuizQuestion(
            question: "遺言執行者の役割として正しいものはどれですか？",
            choices: [
              "遺産分割協議を行う",
              "遺言の内容を実現する",
              "相続税の申告を行う",
              "相続人の選定を行う"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言執行者の役割は、遺言の内容を実現することです。"
        ),
        QuizQuestion(
            question: "相続放棄が認められない場合はどれですか？",
            choices: [
              "相続財産を一部でも処分した場合",
              "相続人が死亡した場合",
              "相続人が行方不明の場合",
              "相続人が未成年の場合"
            ],
            correctAnswerIndex: 0,
            explanation: "相続財産を一部でも処分した場合、相続放棄は認められません。"
        ),
        QuizQuestion(
            question: "相続税の納付期限を過ぎた場合の延滞税の計算方法として正しいものはどれですか？",
            choices: [
              "固定税率で計算される",
              "日割りで計算される",
              "月割りで計算される",
              "年割りで計算される"
            ],
            correctAnswerIndex: 1,
            explanation: "相続税の延滞税は日割りで計算されます。"
        ),
        QuizQuestion(
            question: "法定相続人がいない場合、相続財産はどのように処理されますか？",
            choices: [
              "国庫に帰属する",
              "地方自治体に帰属する",
              "家庭裁判所が管理する",
              "遺言執行者が管理する"
            ],
            correctAnswerIndex: 0,
            explanation: "法定相続人がいない場合、相続財産は国庫に帰属します。"
        ),
        QuizQuestion(
            question: "相続税の基礎控除額はどのように計算されますか？",
            choices: [
              "3,000万円 + 600万円 × 法定相続人の数",
              "3,600万円 + 600万円 × 法定相続人の数",
              "4,200万円 + 600万円 × 法定相続人の数",
              "5,000万円 + 600万円 × 法定相続人の数"
            ],
            correctAnswerIndex: 0,
            explanation: "相続税の基礎控除額は「3,000万円 + 600万円 × 法定相続人の数」で計算されます。"
        ),
        QuizQuestion(
            question: "相続時精算課税制度の適用を受けるための条件として正しいものはどれですか？",
            choices: [
              "贈与者が60歳以上であること",
              "受贈者が20歳以上であること",
              "贈与者が70歳以上であること",
              "受贈者が30歳以上であること"
            ],
            correctAnswerIndex: 0,
            explanation: "相続時精算課税制度の適用を受けるためには、贈与者が60歳以上である必要があります。"
        ),
        QuizQuestion(
            question: "被相続人が遺言書を残していない場合、遺産分割の方法として最も適切なものはどれですか？",
            choices: [
              "家庭裁判所の判断に従う",
              "相続人全員で協議して決定する",
              "市区町村の役所で手続きを行う",
              "遺言執行者が決定する"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書がない場合、遺産分割は相続人全員で協議して決定する必要があります。"
        ),
        QuizQuestion(
            question: "相続税の納付方法として正しいものはどれですか？",
            choices: [
              "一括納付のみ",
              "分割納付のみ",
              "一括納付と分割納付の選択が可能",
              "納付の必要がない"
            ],
            correctAnswerIndex: 2,
            explanation: "相続税の納付方法には、一括納付と分割納付の選択が可能です。"
        ),
        QuizQuestion(
            question: "遺留分減殺請求権を行使できる期間はどれですか？",
            choices: [
              "遺言書が開封されてから1年以内",
              "相続開始を知った日から6ヶ月以内",
              "相続開始を知った日から1年以内",
              "相続開始を知った日から3年以内"
            ],
            correctAnswerIndex: 2,
            explanation: "遺留分減殺請求権は、相続開始を知った日から1年以内に行使する必要があります。"
        ),
        QuizQuestion(
            question: "遺産分割の際、配偶者の法定相続分が2分の1となる場合はどれですか？",
            choices: [
              "配偶者と子供が相続人である場合",
              "配偶者と父母が相続人である場合",
              "配偶者と兄弟姉妹が相続人である場合",
              "配偶者のみが相続人である場合"
            ],
            correctAnswerIndex: 0,
            explanation: "配偶者と子供が相続人となる場合、配偶者の法定相続分は2分の1となります。"
        ),
        QuizQuestion(
            question: "相続人が行方不明の場合の相続手続きとして正しいものはどれですか？",
            choices: [
              "相続分を他の相続人に分配する",
              "家庭裁判所に不在者財産管理人の選任を申し立てる",
              "市区町村の役所に届け出る",
              "相続手続きを中止する"
            ],
            correctAnswerIndex: 1,
            explanation: "相続人が行方不明の場合、家庭裁判所に不在者財産管理人の選任を申し立てる必要があります。"
        ),
        QuizQuestion(
            question: "遺言書が有効であるための要件として正しいものはどれですか？",
            choices: [
              "遺言者の署名と押印があること",
              "証人2人以上の立会いがあること",
              "遺言者の署名と証人1人以上の署名があること",
              "遺言者の署名と家庭裁判所の承認があること"
            ],
            correctAnswerIndex: 1,
            explanation: "遺言書が有効であるためには、証人2人以上の立会いが必要です。"
        ),
        QuizQuestion(
            question: "相続財産に含まれないものはどれですか？",
            choices: [
              "被相続人名義の預金",
              "被相続人名義の不動産",
              "被相続人の死亡保険金",
              "被相続人名義の株式"
            ],
            correctAnswerIndex: 3,
            explanation: "死亡保険金は受取人が指定されている場合、相続財産に含まれません。"
        ),
        QuizQuestion(
            question: "相続放棄をすることによって生じる結果として正しいものはどれですか？",
            choices: [
              "放棄した相続人は最初から相続人でなかったとみなされる",
              "放棄した相続人は相続財産を放棄するだけで債務を引き継ぐ",
              "放棄した相続人は相続税の支払い義務がなくなる",
              "放棄した相続人は遺留分を請求できる"
            ],
            correctAnswerIndex: 0,
            explanation: "相続放棄をした場合、放棄した相続人は最初から相続人でなかったとみなされます。"
        ),
        QuizQuestion(
            question: "法定相続人において、相続放棄をする場合の手続きについて正しいものはどれですか？",
            choices: [
              "被相続人の死亡後3ヶ月以内に家庭裁判所に申し立てる",
              "被相続人の死亡後6ヶ月以内に税務署に届け出る",
              "被相続人の死亡前に家庭裁判所に申し立てる",
              "被相続人の死亡後1年以内に家庭裁判所に申し立てる"
            ],
            correctAnswerIndex: 0,
            explanation: "相続放棄は被相続人の死亡後3ヶ月以内に家庭裁判所に申し立てる必要があります。"
        ),
        QuizQuestion(
            question: "遺産分割協議書に署名・押印する際、相続人が未成年の場合、代わりに誰が署名・押印する必要がありますか？",
            choices: [
              "未成年者本人",
              "未成年者の法定代理人",
              "家庭裁判所の裁判官",
              "相続財産管理人"
            ],
            correctAnswerIndex: 1,
            explanation: "未成年者が相続人の場合、その法定代理人（通常は親）が遺産分割協議書に署名・押印します。"
        ),
        QuizQuestion(
            question: "遺留分について正しい説明はどれですか？",
            choices: [
              "遺言書によって全ての財産を指定できる",
              "遺留分は法定相続人全員に認められる",
              "遺留分は配偶者と直系卑属に認められる",
              "遺留分は法定相続分の全てを保証する"
            ],
            correctAnswerIndex: 2,
            explanation: "遺留分は配偶者と直系卑属に認められます。直系尊属や兄弟姉妹には遺留分はありません。"
        ),
        QuizQuestion(
            question: "事業承継において、後継者が事業を円滑に引き継ぐために必要な手続きとして適切でないものはどれですか？",
            choices: [
              "経営者保証の解除",
              "後継者の選定と育成",
              "相続税の納税資金の確保",
              "従業員全員への事前通知"
            ],
            correctAnswerIndex: 3,
            explanation: "従業員全員への事前通知は重要ですが、必ずしも事業承継における手続きとして必要ではありません。"
        ),
        QuizQuestion(
            question: "相続税の申告期限は、被相続人の死亡後どのくらいですか？",
            choices: [
              "3ヶ月以内",
              "6ヶ月以内",
              "10ヶ月以内",
              "1年以内"
            ],
            correctAnswerIndex: 2,
            explanation: "相続税の申告期限は、被相続人の死亡後10ヶ月以内です。"
        ),
        QuizQuestion(
            question: "相続人が遺産を分割する際、民法上の規定によると、次のうち最も優先されるべき相続分を持つのは誰ですか？",
            choices: [
              "配偶者",
              "子供",
              "父母",
              "兄弟姉妹"
            ],
            correctAnswerIndex: 0,
            explanation: "民法上、配偶者は常に相続人として最優先されます。配偶者と子供が共に相続人となる場合、配偶者の相続分は1/2となります。"
        ),
        QuizQuestion(
            question: "遺産分割協議において、全ての相続人の同意が必要とされる理由として最も適切なものはどれですか？",
            choices: [
              "法律で定められているため",
              "相続人全員の権利を守るため",
              "税務署の指示に従うため",
              "遺産の価値を最大化するため"
            ],
            correctAnswerIndex: 1,
            explanation: "遺産分割協議は相続人全員の同意がなければ有効にならないため、相続人全員の権利を守るためです。"
        ),
        QuizQuestion(
            question: "遺言書の効力を発生させるためには、以下のうちどの方法が必要ですか？",
            choices: [
              "家庭裁判所での検認",
              "公証人による作成",
              "弁護士の署名",
              "税務署への届け出"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言書の効力を発生させるためには、家庭裁判所での検認が必要です。検認は遺言書が正式なものであることを確認する手続きです。"
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicTangoBeginner, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicTangoBeginnerList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicTangoBeginnerList(isPresenting: .constant(false))
    }
}




