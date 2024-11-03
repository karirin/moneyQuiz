//
//  QuizToeicJukugoBeginnerList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizToeicJukugoIntermediateList: View {
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
                question: "遺留分を侵害された相続人が行うことができる請求は次のうちどれですか？",
                choices: [
                    "遺言無効請求",
                    "遺留分減殺請求",
                    "相続放棄",
                    "代償分割請求"
                ],
                correctAnswerIndex: 1,
                explanation: "遺留分を侵害された相続人は、遺留分減殺請求を行うことができます。"
        ),
        QuizQuestion(
                question: "相続人が複数いる場合、相続税の申告は誰が行う義務がありますか？",
                choices: [
                    "遺言執行者",
                    "全相続人",
                    "相続人代表",
                    "相続財産管理人"
                ],
                correctAnswerIndex: 2,
                explanation: "相続人が複数いる場合、相続税の申告は相続人代表が行う義務があります。"
        ),
        QuizQuestion(
                question: "被相続人が生前に特定の相続人に対して行った贈与は、相続税の計算においてどのように扱われますか？",
                choices: [
                    "全て課税対象外となる",
                    "全て相続税の課税対象となる",
                    "相続開始前3年以内の贈与のみ課税対象となる",
                    "相続開始前5年以内の贈与のみ課税対象となる"
                ],
                correctAnswerIndex: 2,
                explanation: "被相続人が相続開始前3年以内に特定の相続人に対して行った贈与は、相続税の課税対象となります。"
        ),
        QuizQuestion(
                question: "相続税の基礎控除額の計算式は次のうちどれですか？",
                choices: [
                    "3,000万円 + （法定相続人の数 × 600万円）",
                    "5,000万円 + （法定相続人の数 × 1,000万円）",
                    "1億円",
                    "法定相続人の数 × 500万円"
                ],
                correctAnswerIndex: 0,
                explanation: "相続税の基礎控除額は、3,000万円に法定相続人の数×600万円を加えた額です。"
        ),
        QuizQuestion(
                question: "相続放棄を行う際に提出する書類は次のうちどれですか？",
                choices: [
                    "遺産分割協議書",
                    "相続放棄申述書",
                    "相続税申告書",
                    "遺留分減殺請求書"
                ],
                correctAnswerIndex: 1,
                explanation: "相続放棄を行う際には、家庭裁判所に相続放棄申述書を提出する必要があります。"
        ),
        QuizQuestion(
                question: "相続税の申告期限は、相続の開始を知った日の翌日から何か月以内ですか？",
                choices: [
                    "3か月以内",
                    "6か月以内",
                    "9か月以内",
                    "10か月以内"
                ],
                correctAnswerIndex: 3,
                explanation: "相続税の申告および納税は、相続の開始を知った日の翌日から10か月以内に行う必要があります。"
        ),
        QuizQuestion(
                question: "遺言書の有効性を確保するための要件として正しいものは次のうちどれですか？",
                choices: [
                    "遺言者が未成年であること",
                    "遺言書が公証人によって証明されていること",
                    "遺言書が遺言者の意思によるものであること",
                    "遺言書が複数存在すること"
                ],
                correctAnswerIndex: 2,
                explanation: "遺言書の有効性を確保するためには、遺言書が遺言者の意思によるものであることが必要です。"
        ),
        QuizQuestion(
                question: "相続財産の分割方法として、相続人全員が共有する方法は次のうちどれですか？",
                choices: [
                    "現物分割",
                    "代償分割",
                    "換価分割",
                    "共有分割"
                ],
                correctAnswerIndex: 3,
                explanation: "相続財産の分割方法として、相続人全員が共有する方法は共有分割です。"
        ),
        QuizQuestion(
                question: "遺言書の種類として正しいものは次のうちどれですか？",
                choices: [
                    "自筆証書遺言",
                    "口述遺言",
                    "暗黙遺言",
                    "相続放棄遺言"
                ],
                correctAnswerIndex: 0,
                explanation: "遺言書の種類には自筆証書遺言があります。口述遺言や暗黙遺言は存在しません。"
        ),
        QuizQuestion(
                question: "被相続人の債務のうち、相続財産から控除されるものは次のうちどれですか？",
                choices: [
                    "被相続人の医療費",
                    "被相続人の葬儀費用",
                    "被相続人の生活費",
                    "被相続人の交際費"
                ],
                correctAnswerIndex: 1,
                explanation: "被相続人の債務のうち、相続財産から控除されるものには葬儀費用が含まれます。"
        ),
        QuizQuestion(
                question: "相続税の配偶者控除の上限額は次のうちどれですか？",
                choices: [
                    "1億円",
                    "1億6,000万円",
                    "3億円",
                    "無制限"
                ],
                correctAnswerIndex: 1,
                explanation: "相続税の配偶者控除の上限額は1億6,000万円です。"
        ),
        QuizQuestion(
                question: "相続放棄が認められるための手続き期間は、相続の開始を知った日から何日以内ですか？",
                choices: [
                    "30日以内",
                    "3か月以内",
                    "6か月以内",
                    "1年以内"
                ],
                correctAnswerIndex: 1,
                explanation: "相続放棄が認められるためには、相続の開始を知った日から3か月以内に手続きを行う必要があります。"
        ),
        QuizQuestion(
                question: "相続税の申告期限は、相続の開始を知った日の翌日から何か月以内ですか？",
                choices: [
                    "3か月以内",
                    "6か月以内",
                    "9か月以内",
                    "10か月以内"
                ],
                correctAnswerIndex: 3,
                explanation: "相続税の申告および納税は、相続の開始を知った日の翌日から10か月以内に行う必要があります。"
        ),
        QuizQuestion(
                question: "小規模宅地等の特例における評価減の割合は次のうちどれですか？",
                choices: [
                    "40%",
                    "50%",
                    "60%",
                    "80%"
                ],
                correctAnswerIndex: 3,
                explanation: "小規模宅地等の特例では、宅地等の評価額を80%減額することができます。"
        ),
        QuizQuestion(
                question: "遺産分割協議において、相続人全員の同意が必要な手続きは次のうちどれですか？",
                choices: [
                    "相続放棄",
                    "相続税の申告",
                    "遺産分割協議書の作成",
                    "代償分割"
                ],
                correctAnswerIndex: 3,
                explanation: "遺産分割協議において、相続人全員の同意が必要な手続きには代償分割が含まれます。"
        ),
        QuizQuestion(
                question: "相続財産の一部を現金化し、その現金を相続人で分ける方法は次のうちどれですか？",
                choices: [
                    "現物分割",
                    "換価分割",
                    "代償分割",
                    "共有分割"
                ],
                correctAnswerIndex: 1,
                explanation: "相続財産の一部を現金化し、その現金を相続人で分ける方法は換価分割です。"
        ),
        QuizQuestion(
                question: "被相続人の遺言が無効とされるのは次のうちどの状況ですか？",
                choices: [
                    "遺言が口述で作成されている",
                    "遺言が公証人によって証明されている",
                    "遺言が相続人全員の同意を得ている",
                    "遺言が被相続人の意思によるものである"
                ],
                correctAnswerIndex: 0,
                explanation: "被相続人の遺言が無効とされる状況の一つに、遺言が口述で作成されている場合があります。"
        ),
        QuizQuestion(
                question: "相続税の納税猶予が認められるための要件として適切なものは次のうちどれですか？",
                choices: [
                    "相続税が一定の金額以上であること",
                    "相続財産のうち不動産が一定割合を超えること",
                    "相続人全員が同意していること",
                    "被相続人が遺言を残していること"
                ],
                correctAnswerIndex: 1,
                explanation: "相続税の納税猶予が認められるためには、相続財産のうち不動産が一定割合を超えることが要件となります。"
        ),
        QuizQuestion(
                question: "相続財産に対して遺留分を持つのは次のうち誰ですか？",
                choices: [
                    "配偶者と子供",
                    "兄弟姉妹",
                    "甥・姪",
                    "親戚"
                ],
                correctAnswerIndex: 0,
                explanation: "相続財産に対して遺留分を持つのは、配偶者と子供です。"
        ),
        QuizQuestion(
                question: "相続人が相続放棄を行う場合、提出する書類は次のうちどれですか？",
                choices: [
                    "遺産分割協議書",
                    "相続放棄申述書",
                    "相続税申告書",
                    "遺留分減殺請求書"
                ],
                correctAnswerIndex: 1,
                explanation: "相続放棄を行う場合、家庭裁判所に相続放棄申述書を提出する必要があります。"
        ),
        QuizQuestion(
                question: "相続財産の評価において、小規模宅地等の特例が適用されるための要件の一つは次のうちどれですか？",
                choices: [
                    "相続開始前に被相続人がその宅地に住んでいたこと",
                    "相続財産の評価額が一定額を超えること",
                    "相続人全員がその宅地を共有していること",
                    "相続人全員がその宅地を売却する意志を持っていること"
                ],
                correctAnswerIndex: 0,
                explanation: "小規模宅地等の特例が適用されるためには、相続開始前に被相続人がその宅地に住んでいたことが要件の一つです。"
        ),
        QuizQuestion(
                question: "被相続人が生前に特定の相続人に財産を贈与していた場合、その財産は相続財産に含まれますか？",
                choices: [
                    "全て含まれる",
                    "全て含まれない",
                    "相続開始前3年以内の贈与財産のみ含まれる",
                    "相続開始前5年以内の贈与財産のみ含まれる"
                ],
                correctAnswerIndex: 2,
                explanation: "被相続人が生前に特定の相続人に贈与した財産は、相続開始前3年以内のもののみ相続財産に含まれます。"
        ),
        QuizQuestion(
                question: "相続税の基礎控除額を計算するための公式は次のうちどれですか？",
                choices: [
                    "3,000万円 + （法定相続人の数 × 600万円）",
                    "5,000万円 + （法定相続人の数 × 1,000万円）",
                    "1億円",
                    "法定相続人の数 × 500万円"
                ],
                correctAnswerIndex: 0,
                explanation: "相続税の基礎控除額は、3,000万円に法定相続人の数×600万円を加えた額です。"
        ),
        QuizQuestion(
                question: "相続税の申告期限は、相続の開始を知った日の翌日から何か月以内ですか？",
                choices: [
                    "3か月以内",
                    "6か月以内",
                    "9か月以内",
                    "10か月以内"
                ],
                correctAnswerIndex: 3,
                explanation: "相続税の申告および納税は、相続の開始を知った日の翌日から10か月以内に行う必要があります。"
        ),
        QuizQuestion(
                question: "遺産分割協議において全相続人が合意に達しない場合、最終的に決定を下すのは誰ですか？",
                choices: [
                    "公証人",
                    "家庭裁判所",
                    "税務署",
                    "相続税の申告者"
                ],
                correctAnswerIndex: 1,
                explanation: "遺産分割協議において全相続人が合意に達しない場合、最終的に決定を下すのは家庭裁判所です。"
        ),
        QuizQuestion(
                question: "相続税の課税価格に含まれないものは次のうちどれですか？",
                choices: [
                    "被相続人の死亡保険金",
                    "被相続人の死亡退職金",
                    "被相続人の葬儀費用",
                    "被相続人の預貯金"
                ],
                correctAnswerIndex: 2,
                explanation: "被相続人の葬儀費用は相続税の課税価格には含まれません。"
        ),
        QuizQuestion(
                question: "遺留分の侵害があった場合、相続人が行うことができる請求は何ですか？",
                choices: [
                    "遺留分減殺請求",
                    "遺言無効確認請求",
                    "相続放棄",
                    "代償分割請求"
                ],
                correctAnswerIndex: 0,
                explanation: "遺留分の侵害があった場合、相続人は遺留分減殺請求を行うことができます。"
        ),
        QuizQuestion(
                question: "相続財産の分割方法として最も一般的な方法は次のうちどれですか？",
                choices: [
                    "現物分割",
                    "換価分割",
                    "代償分割",
                    "共有分割"
                ],
                correctAnswerIndex: 0,
                explanation: "相続財産の分割方法として最も一般的なのは現物分割です。"
        ),
        QuizQuestion(
                question: "相続税の納税猶予が認められる条件の一つとして正しいものは次のうちどれですか？",
                choices: [
                    "相続税の納付が困難な場合",
                    "相続財産が不動産のみで構成されている場合",
                    "相続税の申告書を提出している場合",
                    "相続税の延納申請を行っている場合"
                ],
                correctAnswerIndex: 1,
                explanation: "相続税の納税猶予が認められる条件の一つは、相続財産が不動産のみで構成されている場合です。"
        ),
        QuizQuestion(
                question: "遺言書が無効とされる場合は次のうちどれですか？",
                choices: [
                    "遺言者が未成年の場合",
                    "遺言書が複数存在する場合",
                    "遺言書が遺言者自身の手で書かれていない場合",
                    "遺言書が公正証書で作成されていない場合"
                ],
                correctAnswerIndex: 2,
                explanation: "遺言書が無効とされる場合の一つに、遺言書が遺言者自身の手で書かれていない場合があります。"
        ),
        QuizQuestion(
                question: "相続人が複数いる場合、遺産分割協議の結果として成立するのは次のうちどれですか？",
                choices: [
                    "遺言執行",
                    "相続放棄",
                    "遺産分割協議書",
                    "代償分割"
                ],
                correctAnswerIndex: 2,
                explanation: "相続人が複数いる場合、遺産分割協議の結果として成立するのは遺産分割協議書です。"
        ),
        QuizQuestion(
                question: "相続税の課税対象となる財産の一つに含まれるものは次のうちどれですか？",
                choices: [
                    "贈与税非課税枠内の贈与財産",
                    "生命保険金",
                    "被相続人の年金",
                    "相続開始前1年以上前の贈与財産"
                ],
                correctAnswerIndex: 1,
                explanation: "相続税の課税対象となる財産の一つに、生命保険金が含まれます。"
        ),
        QuizQuestion(
                question: "相続人が単独で相続放棄を行う場合、必要な手続きは次のうちどれですか？",
                choices: [
                    "家庭裁判所への相続放棄申述",
                    "公証役場への申請",
                    "相続税の申告",
                    "相続財産管理人の選任"
                ],
                correctAnswerIndex: 0,
                explanation: "相続人が単独で相続放棄を行う場合、家庭裁判所に相続放棄申述を行う必要があります。"
        ),
        QuizQuestion(
                question: "相続税の計算において、基礎控除額に含まれるものは次のうちどれですか？",
                choices: [
                    "3,000万円 + （法定相続人の数 × 600万円）",
                    "5,000万円 + （法定相続人の数 × 1,000万円）",
                    "1億円",
                    "法定相続人の数 × 500万円"
                ],
                correctAnswerIndex: 0,
                explanation: "相続税の計算において、基礎控除額は3,000万円 + （法定相続人の数 × 600万円）となります。"
        ),
        QuizQuestion(
                question: "特定の相続人が遺産分割協議で他の相続人に現金を支払うことを条件に、特定の財産を取得する分割方法は何ですか？",
                choices: [
                    "現物分割",
                    "代償分割",
                    "換価分割",
                    "共有分割"
                ],
                correctAnswerIndex: 1,
                explanation: "特定の相続人が他の相続人に現金を支払うことを条件に特定の財産を取得する分割方法は代償分割です。"
        ),
        QuizQuestion(
                question: "相続税の配偶者控除の適用条件として正しいものは次のうちどれですか？",
                choices: [
                    "配偶者が相続開始前に死亡している場合",
                    "相続人全員が同意している場合",
                    "相続税の申告書を提出する場合",
                    "配偶者が外国籍である場合"
                ],
                correctAnswerIndex: 2,
                explanation: "相続税の配偶者控除の適用を受けるためには、相続税の申告書を提出する必要があります。"
        ),
        QuizQuestion(
                question: "遺言書が存在しない場合の相続はどのように決定されますか？",
                choices: [
                    "法定相続人全員の協議",
                    "裁判所の判決",
                    "相続税の納税",
                    "被相続人の遺志"
                ],
                correctAnswerIndex: 0,
                explanation: "遺言書が存在しない場合、相続は法定相続人全員の協議によって決定されます。"
        ),
        QuizQuestion(
                question: "小規模宅地等の特例における事業用宅地等の評価減の割合は次のうちどれですか？",
                choices: [
                    "50%",
                    "60%",
                    "70%",
                    "80%"
                ],
                correctAnswerIndex: 3,
                explanation: "小規模宅地等の特例において、事業用宅地等の評価減の割合は80%です。"
        ),
        QuizQuestion(
                question: "相続税の課税価格から控除される債務として適切なものは次のうちどれですか？",
                choices: [
                    "被相続人の生活費",
                    "被相続人の医療費",
                    "被相続人の葬式費用",
                    "被相続人の交際費"
                ],
                correctAnswerIndex: 2,
                explanation: "相続税の課税価格から控除される債務として、被相続人の葬式費用が適切です。"
        ),
        QuizQuestion(
                question: "遺言書の有効性を保つために必要な要件として正しいものは次のうちどれですか？",
                choices: [
                    "遺言者が未成年であること",
                    "遺言書が口述されていること",
                    "遺言書が遺言者自身の手で書かれていること",
                    "遺言書が公証役場で作成されていること"
                ],
                correctAnswerIndex: 3,
                explanation: "遺言書の有効性を保つためには、遺言書が公証役場で作成されていることが必要です。"
        ),
        QuizQuestion(
                question: "相続財産の一部を特定の相続人に譲るために行う手続きは次のうちどれですか？",
                choices: [
                    "代償分割",
                    "遺留分減殺請求",
                    "寄与分",
                    "特別受益"
                ],
                correctAnswerIndex: 0,
                explanation: "相続財産の一部を特定の相続人に譲るために代償分割の手続きを行います。"
        ),
        QuizQuestion(
                question: "相続人が相続開始後に行うことができる行為として正しいものは次のうちどれですか？",
                choices: [
                    "遺産分割協議",
                    "相続放棄の申述",
                    "相続税の申告",
                    "すべての上記の行為"
                ],
                correctAnswerIndex: 3,
                explanation: "相続開始後、相続人が行うことができる行為として、遺産分割協議、相続放棄の申述、相続税の申告が含まれます。"
        ),
        QuizQuestion(
                question: "相続税の延納が認められる要件として正しいものは次のうちどれですか？",
                choices: [
                    "相続税の総額が高額であること",
                    "相続財産が不動産のみで構成されていること",
                    "相続税の納付期限内に申請を行うこと",
                    "相続税の納付が困難であること"
                ],
                correctAnswerIndex: 2,
                explanation: "相続税の延納が認められるためには、相続税の納付期限内に申請を行う必要があります。"
        ),
        QuizQuestion(
                question: "相続放棄が認められないケースとして正しいものは次のうちどれですか？",
                choices: [
                    "相続人が相続財産を処分した場合",
                    "相続人が相続開始を知った時から3か月以内に申述しなかった場合",
                    "相続人が相続財産をすべて受け取った場合",
                    "すべての上記のケース"
                ],
                correctAnswerIndex: 3,
                explanation: "相続放棄が認められないケースとして、相続人が相続財産を処分した場合、相続開始を知った時から3か月以内に申述しなかった場合、相続財産をすべて受け取った場合が含まれます。"
        ),
        QuizQuestion(
                question: "遺言書の内容が相続人に不利な場合、相続人が取ることができる行動として正しいものは次のうちどれですか？",
                choices: [
                    "遺言書の無効を主張する",
                    "遺留分減殺請求を行う",
                    "遺言執行者に異議を申し立てる",
                    "遺産分割協議を拒否する"
                ],
                correctAnswerIndex: 1,
                explanation: "遺言書の内容が相続人に不利な場合、相続人は遺留分減殺請求を行うことができます。"
        ),
        QuizQuestion(
                question: "相続開始後に家庭裁判所において相続人全員が遺産分割の方法について合意できない場合、次に行う手続きは何ですか？",
                choices: [
                    "遺産分割調停",
                    "遺言執行",
                    "相続放棄",
                    "遺産分割協議"
                ],
                correctAnswerIndex: 0,
                explanation: "相続開始後に遺産分割協議がまとまらない場合、家庭裁判所に遺産分割調停を申し立てることができます。"
        ),
        QuizQuestion(
                question: "被相続人の死亡により発生する債務はどのように処理されますか？",
                choices: [
                    "全て相続人が支払う",
                    "全て免除される",
                    "相続財産の範囲内で相続人が支払う",
                    "遺産分割協議で決める"
                ],
                correctAnswerIndex: 2,
                explanation: "被相続人の死亡により発生する債務は、相続財産の範囲内で相続人が支払います。"
        ),
        QuizQuestion(
                question: "相続人が複数いる場合、相続税の申告は誰が行う義務がありますか？",
                choices: [
                    "遺言執行者",
                    "全相続人",
                    "相続人代表",
                    "相続財産管理人"
                ],
                correctAnswerIndex: 2,
                explanation: "相続人が複数いる場合、相続税の申告は相続人代表が行う義務があります。"
        ),
        QuizQuestion(
                question: "相続放棄を行った相続人が受け取ることができないものは次のうちどれですか？",
                choices: [
                    "遺産分割協議の結果としての財産",
                    "遺留分",
                    "生命保険金",
                    "死亡退職金"
                ],
                correctAnswerIndex: 0,
                explanation: "相続放棄を行った相続人は、遺産分割協議の結果としての財産を受け取ることができません。"
        ),
        QuizQuestion(
                question: "特定の相続人に対して生前に贈与が行われた場合、それを考慮した遺産分割を行うために使用される制度は何ですか？",
                choices: [
                    "代償分割",
                    "遺留分減殺請求",
                    "寄与分",
                    "特別受益"
                ],
                correctAnswerIndex: 3,
                explanation: "特定の相続人に対して生前に贈与が行われた場合、それを考慮した遺産分割を行うために特別受益の制度が使用されます。"
        ),
        QuizQuestion(
                question: "相続財産が債務超過である場合、相続人が負うリスクを回避するために行う手続きはどれですか？",
                choices: [
                    "遺産分割協議",
                    "相続放棄",
                    "相続税の申告",
                    "遺言執行"
                ],
                correctAnswerIndex: 1,
                explanation: "相続財産が債務超過である場合、相続人が負うリスクを回避するためには相続放棄を行うことができます。"
        ),
        QuizQuestion(
                question: "相続開始前に被相続人が生前贈与を行った場合、相続税の課税対象となる期間はどれですか？",
                choices: [
                    "相続開始前1年以内",
                    "相続開始前3年以内",
                    "相続開始前5年以内",
                    "相続開始前10年以内"
                ],
                correctAnswerIndex: 1,
                explanation: "相続開始前3年以内に被相続人が行った生前贈与は、相続税の課税対象となります。"
        ),
        QuizQuestion(
                question: "相続税の申告期限は相続の開始を知った日の翌日から何か月以内ですか？",
                choices: [
                    "3か月以内",
                    "6か月以内",
                    "9か月以内",
                    "10か月以内"
                ],
                correctAnswerIndex: 3,
                explanation: "相続税の申告期限は相続の開始を知った日の翌日から10か月以内です。"
        ),
        QuizQuestion(
                question: "遺言書の種類として認められていないものは次のうちどれですか？",
                choices: [
                    "自筆証書遺言",
                    "公正証書遺言",
                    "秘密証書遺言",
                    "口述遺言"
                ],
                correctAnswerIndex: 3,
                explanation: "遺言書の種類として認められていないものは口述遺言です。"
        ),
        QuizQuestion(
                question: "遺言書の検認を行う機関はどこですか？",
                choices: [
                    "公証役場",
                    "家庭裁判所",
                    "地方裁判所",
                    "市町村役場"
                ],
                correctAnswerIndex: 1,
                explanation: "遺言書の検認は家庭裁判所で行います。"
        ),
        QuizQuestion(
                question: "相続税の基礎控除額はどのように計算されますか？",
                choices: [
                    "3,000万円 + （法定相続人の数 × 600万円）",
                    "5,000万円 + （法定相続人の数 × 1,000万円）",
                    "1億円",
                    "法定相続人の数 × 500万円"
                ],
                correctAnswerIndex: 0,
                explanation: "相続税の基礎控除額は、3,000万円に法定相続人の数×600万円を加えた額です。"
        ),
        QuizQuestion(
                question: "遺産分割協議書が必要な場合はどれですか？",
                choices: [
                    "被相続人が遺言を残していない場合",
                    "相続税を納める必要がない場合",
                    "被相続人が全財産を現金で残している場合",
                    "相続人が一人だけの場合"
                ],
                correctAnswerIndex: 0,
                explanation: "遺産分割協議書は、被相続人が遺言を残していない場合に相続人全員で遺産の分け方を決めるために必要です。"
        ),
        QuizQuestion(
                question: "相続財産に含まれないものは次のうちどれですか？",
                choices: [
                    "預貯金",
                    "不動産",
                    "生命保険金の非課税限度額部分",
                    "有価証券"
                ],
                correctAnswerIndex: 2,
                explanation: "生命保険金の非課税限度額部分は、相続財産には含まれません。"
        ),
        QuizQuestion(
                question: "法定相続分が最も大きいのは次のうち誰ですか？",
                choices: [
                    "配偶者",
                    "子供",
                    "両親",
                    "兄弟姉妹"
                ],
                correctAnswerIndex: 0,
                explanation: "法定相続分が最も大きいのは配偶者です。"
        ),
        QuizQuestion(
                question: "相続開始後に相続放棄を行う場合、家庭裁判所に提出する書類はどれですか？",
                choices: [
                    "相続放棄申述書",
                    "遺産分割協議書",
                    "遺言執行者選任申立書",
                    "遺留分減殺請求書"
                ],
                correctAnswerIndex: 0,
                explanation: "相続放棄を行う場合、家庭裁判所に相続放棄申述書を提出する必要があります。"
        ),
        QuizQuestion(
                question: "贈与税が非課税となるケースは次のうちどれですか？",
                choices: [
                    "年間110万円以下の贈与",
                    "生前贈与",
                    "配偶者への贈与",
                    "相続開始前3年以内の贈与"
                ],
                correctAnswerIndex: 0,
                explanation: "年間110万円以下の贈与は贈与税が非課税となります。"
        ),
        QuizQuestion(
                question: "遺言執行者の役割は次のうちどれですか？",
                choices: [
                    "遺産分割の調整",
                    "相続税の納税",
                    "遺言内容の実現",
                    "相続人間の争いの仲裁"
                ],
                correctAnswerIndex: 2,
                explanation: "遺言執行者は、遺言の内容を実現するために必要な手続きを行います。"
        ),
        QuizQuestion(
                question: "養子縁組を行うことにより、法定相続人の数が増えるとどのような影響がありますか？",
                choices: [
                    "基礎控除額が減少する",
                    "相続税の課税価格が増加する",
                    "基礎控除額が増加する",
                    "相続税の納税義務が免除される"
                ],
                correctAnswerIndex: 2,
                explanation: "養子縁組を行うことで法定相続人の数が増えると、相続税の基礎控除額が増加します。"
        ),
        QuizQuestion(
                question: "遺産分割協議が成立しない場合、最終的な解決方法はどれですか？",
                choices: [
                    "相続税の申告",
                    "家庭裁判所による審判",
                    "遺言執行者の選任",
                    "公正証書遺言の作成"
                ],
                correctAnswerIndex: 1,
                explanation: "遺産分割協議が成立しない場合、家庭裁判所による審判によって最終的に解決されます。"
        ),
        QuizQuestion(
                question: "遺留分の権利を持つのは次のうち誰ですか？",
                choices: [
                    "配偶者と子供",
                    "兄弟姉妹",
                    "甥・姪",
                    "孫"
                ],
                correctAnswerIndex: 0,
                explanation: "遺留分の権利を持つのは、配偶者と子供です。"
        ),
        QuizQuestion(
                question: "遺言の効力発生はいつからですか？",
                choices: [
                    "作成時",
                    "公証人の認証時",
                    "家庭裁判所の検認時",
                    "遺言者の死亡時"
                ],
                correctAnswerIndex: 3,
                explanation: "遺言の効力は遺言者の死亡時から発生します。"
        ),
        QuizQuestion(
                question: "相続放棄の申述ができる期間は、相続の開始があったことを知った時から何か月以内ですか？",
                choices: [
                    "1か月以内",
                    "3か月以内",
                    "6か月以内",
                    "1年以内"
                ],
                correctAnswerIndex: 1,
                explanation: "相続放棄の申述は、相続の開始があったことを知った時から3か月以内に行う必要があります。"
        ),
        QuizQuestion(
                question: "相続税の申告・納税期限は、相続の開始を知った日の翌日から何か月以内ですか？",
                choices: [
                    "3か月以内",
                    "6か月以内",
                    "10か月以内",
                    "1年以内"
                ],
                correctAnswerIndex: 2,
                explanation: "相続税の申告および納税は、相続の開始を知った日の翌日から10か月以内に行う必要があります。"
        ),
        QuizQuestion(
                question: "遺産分割協議がまとまらない場合、家庭裁判所に申し立てを行うことができるのはどれですか？",
                choices: [
                    "遺産分割調停",
                    "遺言執行",
                    "相続放棄",
                    "遺言書検認"
                ],
                correctAnswerIndex: 0,
                explanation: "遺産分割協議がまとまらない場合、家庭裁判所に遺産分割調停を申し立てることができます。"
        ),
        QuizQuestion(
                question: "代償分割とは何ですか？",
                choices: [
                    "相続財産を分割せずに全て一人が相続すること",
                    "現物で分割すること",
                    "一部の相続人が他の相続人に対して金銭を支払うことで分割すること",
                    "遺言者が生前に相続人に財産を贈与すること"
                ],
                correctAnswerIndex: 2,
                explanation: "代償分割は、一部の相続人が他の相続人に対して金銭を支払うことで分割する方法です。"
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicJukugoIntermediate, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicJukugoIntermediateList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicJukugoIntermediateList(isPresenting: .constant(false))
    }
}






