//
//  QuizToeicJukugoBeginnerList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizToeicJukugoBeginnerList: View {
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
            question: "宅地建物取引業者が行う重要事項説明について正しいものはどれか。",
            choices: [
                "宅地建物取引士が書面で行う。",
                "宅地建物取引業者が口頭で行う。",
                "売買契約後に行う。",
                "貸借契約後に行う。"
            ],
            correctAnswerIndex: 0,
            explanation: "重要事項説明は、宅地建物取引士が書面で行わなければなりません。"
        ),
        QuizQuestion(
            question: "不動産投資の利回りについて正しいものはどれか。",
            choices: [
                "表面利回りは経費を差し引いた後の利回りである。",
                "実質利回りは経費を差し引いた後の利回りである。",
                "表面利回りは経費を差し引いた後の利回りである。",
                "実質利回りは総収入に対する利回りである。"
            ],
            correctAnswerIndex: 1,
            explanation: "実質利回りは、総収入から経費を差し引いた後の利回りです。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、買主が支払う手付金の役割として適切なものはどれか。",
            choices: [
                "契約を解除するための違約金。",
                "売買契約の成立を証するための保証金。",
                "売買価格の一部として充当される頭金。",
                "契約不履行時の罰金。"
            ],
            correctAnswerIndex: 2,
            explanation: "手付金は、売買価格の一部として充当される頭金です。"
        ),
        QuizQuestion(
            question: "借地借家法において、定期借家契約の期間として正しいものはどれか。",
            choices: [
                "最低1年。",
                "最長20年。",
                "最低3年。",
                "最長50年。"
            ],
            correctAnswerIndex: 3,
            explanation: "定期借家契約の期間は最長50年です。"
        ),
        QuizQuestion(
            question: "建物の管理において、共用部分の管理費用を負担するのは誰か。",
            choices: [
                "管理組合。",
                "所有者全員。",
                "借主全員。",
                "自治会。"
            ],
            correctAnswerIndex: 1,
            explanation: "共用部分の管理費用は、所有者全員が負担します。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の返還時期として適切なものはどれか。",
            choices: [
                "契約期間中。",
                "賃借人が退去する前。",
                "賃借人が退去した後。",
                "賃借人が退去した後の3ヶ月以内。"
            ],
            correctAnswerIndex: 2,
            explanation: "敷金は、賃借人が退去した後に返還されます。"
        ),
        QuizQuestion(
            question: "不動産の売買において、登記の目的はどれか。",
            choices: [
                "売買契約の効力を発生させるため。",
                "所有権の公示。",
                "税金の計算。",
                "仲介手数料の支払い。"
            ],
            correctAnswerIndex: 1,
            explanation: "登記の目的は所有権の公示です。"
        ),
        QuizQuestion(
            question: "不動産の評価方法として、適切なものはどれか。",
            choices: [
                "収益還元法は市場価値を基にする。",
                "取引事例比較法は類似物件の取引価格を基にする。",
                "原価法は土地の収益性を基にする。",
                "収益還元法は建築費を基にする。"
            ],
            correctAnswerIndex: 1,
            explanation: "取引事例比較法は、類似物件の取引価格を基に評価する方法です。"
        ),
        QuizQuestion(
            question: "不動産の固定資産税の課税標準額を決定するのは誰か。",
            choices: [
                "国税庁。",
                "地方自治体。",
                "不動産業者。",
                "所有者。"
            ],
            correctAnswerIndex: 1,
            explanation: "固定資産税の課税標準額は地方自治体が決定します。"
        ),
        QuizQuestion(
            question: "不動産投資におけるキャッシュフローの計算に含まれないものはどれか。",
            choices: [
                "家賃収入。",
                "経費。",
                "ローンの元金返済分。",
                "物件の売却益。"
            ],
            correctAnswerIndex: 3,
            explanation: "キャッシュフローの計算には、物件の売却益は含まれません。"
        ),
        QuizQuestion(
            question: "不動産の売買契約における仮登記の目的はどれか。",
            choices: [
                "売買契約の効力を発生させるため。",
                "所有権移転の一時的な保全。",
                "税金の計算。",
                "仲介手数料の支払い。"
            ],
            correctAnswerIndex: 1,
            explanation: "仮登記は、所有権移転の一時的な保全を目的としています。"
        ),
        QuizQuestion(
            question: "建物の耐震性に関する法律として正しいものはどれか。",
            choices: [
                "不動産取引法",
                "建築基準法",
                "宅地建物取引業法",
                "都市計画法"
            ],
            correctAnswerIndex: 1,
            explanation: "建物の耐震性に関する法律は建築基準法です。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺留分を主張できるのは誰か。",
            choices: [
                "被相続人の兄弟姉妹",
                "被相続人の配偶者",
                "被相続人の甥",
                "被相続人の従兄弟"
            ],
            correctAnswerIndex: 1,
            explanation: "遺留分を主張できるのは、被相続人の配偶者、子、直系尊属です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約における更新料の支払いについて正しいものはどれか。",
            choices: [
                "契約更新のたびに必ず支払う。",
                "契約に定めがない場合は支払わない。",
                "貸主の希望で決まる。",
                "借主の希望で決まる。"
            ],
            correctAnswerIndex: 1,
            explanation: "更新料は、契約に定めがない場合は支払う必要がありません。"
        ),
        QuizQuestion(
            question: "不動産の共有持分について、共有者の一人が持分を譲渡する場合の手続きとして正しいものはどれか。",
            choices: [
                "他の共有者の同意が必要。",
                "自由に譲渡できる。",
                "裁判所の許可が必要。",
                "公証人の認証が必要。"
            ],
            correctAnswerIndex: 1,
            explanation: "共有持分の譲渡は、他の共有者の同意がなくても自由に行えます。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の返還が遅れた場合、借主が請求できるものはどれか。",
            choices: [
                "違約金",
                "遅延損害金",
                "賃料の減額",
                "損害賠償"
            ],
            correctAnswerIndex: 2,
            explanation: "敷金の返還が遅れた場合、借主は遅延損害金を請求できます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約における瑕疵担保責任の期間として正しいものはどれか。",
            choices: [
                "契約後1年以内",
                "契約後2年以内",
                "契約後3年以内",
                "契約後5年以内"
            ],
            correctAnswerIndex: 1,
            explanation: "瑕疵担保責任の期間は、通常契約後2年以内です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が賃料を滞納した場合の対応として正しいものはどれか。",
            choices: [
                "即時契約解除",
                "一定期間の猶予後に契約解除",
                "強制退去",
                "法的手続きなしでの契約解除"
            ],
            correctAnswerIndex: 1,
            explanation: "借主が賃料を滞納した場合、一定期間の猶予後に契約解除が可能です。"
        ),
        QuizQuestion(
            question: "不動産の登記において、建物の新築時に行う登記として正しいものはどれか。",
            choices: [
                "保存登記",
                "移転登記",
                "仮登記",
                "抵当権設定登記"
            ],
            correctAnswerIndex: 0,
            explanation: "建物の新築時には、保存登記を行います。"
        ),
        QuizQuestion(
            question: "不動産の売買契約における重要事項説明書の交付時期として正しいものはどれか。",
            choices: [
                "契約締結前",
                "契約締結後",
                "引渡し前",
                "引渡し後"
            ],
            correctAnswerIndex: 0,
            explanation: "重要事項説明書は、契約締結前に交付されます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、買主が負担する登記費用に含まれないものはどれか。",
            choices: [
                "登録免許税",
                "登記手数料",
                "司法書士報酬",
                "仲介手数料"
            ],
            correctAnswerIndex: 3,
            explanation: "仲介手数料は、不動産会社に支払うものであり、登記費用には含まれません。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の返還が必要な場合、返還される金額に含まれないものはどれか。",
            choices: [
                "未払い賃料",
                "通常の使用による損耗",
                "修繕費用",
                "クリーニング費用"
            ],
            correctAnswerIndex: 1,
            explanation: "通常の使用による損耗は敷金の返還に含まれません。"
        ),
        QuizQuestion(
            question: "不動産の固定資産税の納税義務者は誰か。",
            choices: [
                "不動産の購入者",
                "不動産の売却者",
                "その年の1月1日時点の所有者",
                "その年の12月31日時点の所有者"
            ],
            correctAnswerIndex: 2,
            explanation: "固定資産税の納税義務者は、その年の1月1日時点の所有者です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約が成立する時点はどれか。",
            choices: [
                "買主が手付金を支払った時点",
                "契約書に署名捺印した時点",
                "登記が完了した時点",
                "物件の引渡しが完了した時点"
            ],
            correctAnswerIndex: 1,
            explanation: "売買契約は、契約書に署名捺印した時点で成立します。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に発生する修繕費用の負担者は誰か。",
            choices: [
                "貸主",
                "借主",
                "双方で折半",
                "第三者"
            ],
            correctAnswerIndex: 0,
            explanation: "通常、修繕費用は貸主が負担します。"
        ),
        QuizQuestion(
            question: "不動産の売買において、仲介業者が受け取ることのできる最大の仲介手数料率はどれか。",
            choices: [
                "売買価格の1％",
                "売買価格の3％",
                "売買価格の5％",
                "売買価格の10％"
            ],
            correctAnswerIndex: 1,
            explanation: "仲介業者が受け取ることのできる最大の仲介手数料率は、売買価格の3％です。"
        ),
        QuizQuestion(
            question: "不動産の相続税評価額の算定において、路線価方式が適用されるのはどのような不動産か。",
            choices: [
                "市街地に所在する土地",
                "農地",
                "山林",
                "湖沼"
            ],
            correctAnswerIndex: 0,
            explanation: "路線価方式は、市街地に所在する土地に適用されます。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が賃料の支払いを遅延した場合の遅延損害金の利率として適切なものはどれか。",
            choices: [
                "年1％",
                "年5％",
                "年10％",
                "年20％"
            ],
            correctAnswerIndex: 2,
            explanation: "遅延損害金の利率は、通常年10％です。"
        ),
        QuizQuestion(
            question: "不動産の登記において、登記事項証明書の発行を申請するのは誰か。",
            choices: [
                "不動産の所有者",
                "不動産の購入者",
                "司法書士",
                "誰でも申請可能"
            ],
            correctAnswerIndex: 3,
            explanation: "登記事項証明書の発行は、誰でも申請可能です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が退去する際に行うべき手続きとして正しいものはどれか。",
            choices: [
                "賃貸借契約の更新",
                "敷金の返還請求",
                "原状回復",
                "保証人の変更"
            ],
            correctAnswerIndex: 2,
            explanation: "借主が退去する際には、原状回復を行う必要があります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、買主が支払う印紙税の金額は何によって決まるか。",
            choices: [
                "物件の所在地",
                "契約書の作成日",
                "売買価格",
                "買主の年収"
            ],
            correctAnswerIndex: 2,
            explanation: "印紙税の金額は、売買価格によって決まります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約を更新する際に支払う更新料の額は何に基づいて決まるか。",
            choices: [
                "借主の信用状況",
                "契約期間",
                "賃料の何か月分",
                "仲介業者の意向"
            ],
            correctAnswerIndex: 2,
            explanation: "更新料の額は、通常賃料の何か月分として定められます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約における手付解除が可能な時期はいつか。",
            choices: [
                "契約締結後から物件引渡しまで",
                "契約締結前",
                "契約締結後1週間以内",
                "物件引渡し後1週間以内"
            ],
            correctAnswerIndex: 0,
            explanation: "手付解除は、契約締結後から物件引渡しまでの間に可能です。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺言書が存在しない場合、法定相続人が持つ遺産分割の権利として正しいものはどれか。",
            choices: [
                "遺産分割協議",
                "遺留分減殺請求",
                "遺贈",
                "死因贈与"
            ],
            correctAnswerIndex: 0,
            explanation: "遺言書が存在しない場合、法定相続人は遺産分割協議を行う権利があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約を途中で解除する場合、発生する可能性がある費用はどれか。",
            choices: [
                "更新料",
                "敷金",
                "違約金",
                "仲介手数料"
            ],
            correctAnswerIndex: 2,
            explanation: "契約途中での解除には、違約金が発生する可能性があります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、売主が提供するべき書類として正しいものはどれか。",
            choices: [
                "登記事項証明書",
                "印鑑証明書",
                "契約書の写し",
                "固定資産税納税証明書"
            ],
            correctAnswerIndex: 1,
            explanation: "売主は印鑑証明書を提供する必要があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が支払うことが義務付けられている費用はどれか。",
            choices: [
                "礼金",
                "敷金",
                "保証金",
                "火災保険料"
            ],
            correctAnswerIndex: 3,
            explanation: "火災保険料は借主が支払うことが義務付けられている費用です。"
        ),
        QuizQuestion(
            question: "不動産の固定資産税評価額はどのように決定されるか。",
            choices: [
                "市場価値の全額",
                "市場価値の80%",
                "市場価値の70%",
                "市場価値の60%"
            ],
            correctAnswerIndex: 2,
            explanation: "固定資産税評価額は、市場価値の70%程度で決定されます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約解除に必要な条件はどれか。",
            choices: [
                "契約書の不備",
                "双方の合意",
                "売買価格の変更",
                "仲介業者の同意"
            ],
            correctAnswerIndex: 1,
            explanation: "契約解除には、売主と買主の双方の合意が必要です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、貸主が賃料を改定するための条件として正しいものはどれか。",
            choices: [
                "借主の同意",
                "契約書の記載",
                "市場の賃料相場の変動",
                "固定資産税の増減"
            ],
            correctAnswerIndex: 2,
            explanation: "賃料改定には、市場の賃料相場の変動が条件となります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、買主が住宅ローンを利用する場合、ローン特約の内容として正しいものはどれか。",
            choices: [
                "売主がローン審査を行う。",
                "ローンの審査結果によっては契約解除ができる。",
                "買主がローンを全額返済するまで登記は行われない。",
                "ローン審査には売主の保証が必要である。"
            ],
            correctAnswerIndex: 1,
            explanation: "ローン特約は、買主が住宅ローンの審査結果によって契約を解除できることを規定しています。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が賃料を支払わなかった場合、貸主がとることができる法的手段はどれか。",
            choices: [
                "直ちに強制退去させる。",
                "借主の給与を差し押さえる。",
                "契約を解除し、退去を求める。",
                "借主の財産を競売にかける。"
            ],
            correctAnswerIndex: 3,
            explanation: "賃料不払いの場合、貸主は契約を解除し、退去を求めることができます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、登記を行う際の登録免許税はどのように計算されるか。",
            choices: [
                "売買価格の1％",
                "固定資産税評価額の1％",
                "売買価格の2％",
                "固定資産税評価額の2％"
            ],
            correctAnswerIndex: 1,
            explanation: "登録免許税は、固定資産税評価額の1％です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に借主が死亡した場合、契約はどうなるか。",
            choices: [
                "契約は自動的に終了する。",
                "契約は借主の相続人に引き継がれる。",
                "貸主が契約を解除できる。",
                "契約は無効になる。"
            ],
            correctAnswerIndex: 1,
            explanation: "借主が死亡した場合、賃貸借契約は相続人に引き継がれます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、物件の引渡し時に必要な書類として正しいものはどれか。",
            choices: [
                "売買契約書",
                "登記識別情報",
                "印鑑証明書",
                "固定資産税納税証明書"
            ],
            correctAnswerIndex: 1,
            explanation: "物件の引渡し時には、登記識別情報が必要です。"
        ),
        QuizQuestion(
            question: "不動産の固定資産税の納付方法として正しいものはどれか。",
            choices: [
                "一括納付のみ可能",
                "年2回の分割納付が可能",
                "年4回の分割納付が可能",
                "月々の分割納付が可能"
            ],
            correctAnswerIndex: 2,
            explanation: "固定資産税は、年4回の分割納付が可能です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、原状回復義務とは何を指すか。",
            choices: [
                "借主が物件を元の状態に戻すこと",
                "貸主が物件を修繕すること",
                "借主が新しい設備を設置すること",
                "貸主が賃料を返還すること"
            ],
            correctAnswerIndex: 0,
            explanation: "原状回復義務は、借主が物件を元の状態に戻すことを指します。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約解除ができる場合として正しいものはどれか。",
            choices: [
                "売主が引渡しを遅延した場合",
                "買主が登記費用を支払わなかった場合",
                "売主が手付金を返還しなかった場合",
                "買主が住宅ローンを利用できなかった場合"
            ],
            correctAnswerIndex: 3,
            explanation: "買主が住宅ローンを利用できなかった場合、契約解除ができます。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺産分割協議が成立しない場合、どのような手続きが取られるか。",
            choices: [
                "裁判所が介入して調停を行う。",
                "相続人全員が財産を平等に分割する。",
                "弁護士が介入して調停を行う。",
                "遺産分割は自動的に無効になる。"
            ],
            correctAnswerIndex: 0,
            explanation: "遺産分割協議が成立しない場合、裁判所が介入して調停を行います。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の役割として正しいものはどれか。",
            choices: [
                "賃料の前払い",
                "物件の修繕費用の一部として充当",
                "借主の信用保証",
                "賃貸借契約の更新料"
            ],
            correctAnswerIndex: 1,
            explanation: "敷金は、物件の修繕費用の一部として充当されます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約書に記載されるべき内容として正しいものはどれか。",
            choices: [
                "物件の所在地",
                "売主の職業",
                "買主の年収",
                "売主の家族構成"
            ],
            correctAnswerIndex: 0,
            explanation: "契約書には物件の所在地が記載されるべきです。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に借主が無断で転貸した場合、貸主がとるべき行動として正しいものはどれか。",
            choices: [
                "即時契約解除",
                "借主に対する損害賠償請求",
                "転貸の許可を与える",
                "契約内容の変更を求める"
            ],
            correctAnswerIndex: 1,
            explanation: "無断転貸は契約違反となり、損害賠償請求の対象となります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約が成立した後に発生する可能性がある費用として正しいものはどれか。",
            choices: [
                "仲介手数料",
                "物件引渡し手数料",
                "契約書作成費用",
                "登記費用"
            ],
            correctAnswerIndex: 3,
            explanation: "契約成立後には登記費用が発生します。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間満了後に借主が契約を更新しない場合、借主が行うべき手続きとして正しいものはどれか。",
            choices: [
                "新しい賃貸借契約の締結",
                "契約解除通知の送付",
                "敷金の返還請求",
                "原状回復工事の実施"
            ],
            correctAnswerIndex: 2,
            explanation: "契約期間満了後に更新しない場合、敷金の返還請求を行います。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、売主が提供するべき義務として正しいものはどれか。",
            choices: [
                "買主のローン保証",
                "物件の現状維持",
                "物件のリフォーム",
                "契約書の作成"
            ],
            correctAnswerIndex: 1,
            explanation: "売主は物件の現状維持を提供する義務があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の返還が遅延した場合の対応として正しいものはどれか。",
            choices: [
                "貸主に対する遅延損害金の請求",
                "貸主に対する慰謝料の請求",
                "契約の即時解除",
                "裁判所への訴訟"
            ],
            correctAnswerIndex: 0,
            explanation: "敷金の返還が遅延した場合、遅延損害金を請求できます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約解除が認められるケースとして正しいものはどれか。",
            choices: [
                "売主が物件の瑕疵を隠していた場合",
                "買主が登記費用を支払わなかった場合",
                "売主が引渡しを遅延した場合",
                "買主がローン審査に通らなかった場合"
            ],
            correctAnswerIndex: 0,
            explanation: "売主が物件の瑕疵を隠していた場合、契約解除が認められます。"
        ),
        QuizQuestion(
            question: "不動産の相続において、法定相続分を超える相続を行う場合に必要な手続きとして正しいものはどれか。",
            choices: [
                "遺産分割協議",
                "遺留分減殺請求",
                "相続放棄",
                "死因贈与"
            ],
            correctAnswerIndex: 0,
            explanation: "法定相続分を超える相続を行う場合、遺産分割協議が必要です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に借主が原状回復を行わなければならない場合、借主が負担する費用として正しいものはどれか。",
            choices: [
                "修繕費",
                "賃料",
                "敷金",
                "礼金"
            ],
            correctAnswerIndex: 0,
            explanation: "原状回復を行う場合、借主は修繕費を負担します。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約書に含まれるべき重要事項として正しいものはどれか。",
            choices: [
                "売主の職歴",
                "買主の住所",
                "物件の面積",
                "買主の年収"
            ],
            correctAnswerIndex: 2,
            explanation: "契約書には物件の面積が含まれるべき重要事項です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、賃料の支払い方法として一般的なものはどれか。",
            choices: [
                "一括前払い",
                "毎月末払い",
                "毎月前払い",
                "年一回払い"
            ],
            correctAnswerIndex: 2,
            explanation: "賃料の支払い方法としては、毎月前払いが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約成立後に売主が負担する費用として正しいものはどれか。",
            choices: [
                "物件引渡し手数料",
                "仲介手数料",
                "契約書作成費用",
                "固定資産税"
            ],
            correctAnswerIndex: 3,
            explanation: "契約成立後、売主が負担する費用として固定資産税があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に貸主が賃料の値上げを行うためには何が必要か。",
            choices: [
                "借主の同意",
                "契約書の記載",
                "市場の賃料相場の変動",
                "裁判所の許可"
            ],
            correctAnswerIndex: 0,
            explanation: "賃料の値上げを行うためには、借主の同意が必要です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、手付解除の際に買主が支払うべき金額はどれか。",
            choices: [
                "手付金の全額",
                "手付金の半額",
                "手付金の倍額",
                "手付金の三倍額"
            ],
            correctAnswerIndex: 2,
            explanation: "手付解除の際、買主は手付金の倍額を支払います。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺留分が侵害された場合に行う手続きとして正しいものはどれか。",
            choices: [
                "遺産分割協議",
                "遺留分減殺請求",
                "相続放棄",
                "死因贈与"
            ],
            correctAnswerIndex: 1,
            explanation: "遺留分が侵害された場合、遺留分減殺請求を行います。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、重要事項説明が必要な時期はいつか。",
            choices: [
                "契約締結前",
                "契約締結後",
                "物件引渡し前",
                "物件引渡し後"
            ],
            correctAnswerIndex: 0,
            explanation: "重要事項説明は、契約締結前に行わなければなりません。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約期間満了前に退去する場合の手続きとして正しいものはどれか。",
            choices: [
                "契約解除通知の送付",
                "敷金の返還請求",
                "礼金の返還請求",
                "更新料の支払い"
            ],
            correctAnswerIndex: 0,
            explanation: "借主が契約期間満了前に退去する場合、契約解除通知を貸主に送付する必要があります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約解除権が行使できる期間として正しいものはどれか。",
            choices: [
                "契約締結後1週間以内",
                "契約締結後1ヶ月以内",
                "契約締結後3ヶ月以内",
                "契約締結後6ヶ月以内"
            ],
            correctAnswerIndex: 0,
            explanation: "契約解除権は、通常契約締結後1週間以内に行使できます。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺産分割協議書が必要となる場面はどれか。",
            choices: [
                "遺言書が存在する場合",
                "法定相続人が一人の場合",
                "相続人が複数で協議が必要な場合",
                "相続財産が存在しない場合"
            ],
            correctAnswerIndex: 2,
            explanation: "相続人が複数で協議が必要な場合に、遺産分割協議書が作成されます。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、貸主が行うべき定期点検の目的として正しいものはどれか。",
            choices: [
                "借主の生活状況の確認",
                "物件の修繕箇所の確認",
                "賃料の支払い状況の確認",
                "敷金の返還状況の確認"
            ],
            correctAnswerIndex: 1,
            explanation: "貸主は物件の修繕箇所を確認するために定期点検を行います。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、物件の引渡し前に行うべき重要な手続きとして正しいものはどれか。",
            choices: [
                "登記申請",
                "契約解除通知",
                "ローン審査",
                "物件検査"
            ],
            correctAnswerIndex: 3,
            explanation: "物件引渡し前には、物件の状態を確認するために物件検査を行います。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約期間満了後に賃料を支払わずに居住を続ける場合の法的措置として正しいものはどれか。",
            choices: [
                "強制退去",
                "賃料の減額",
                "遅延損害金の請求",
                "契約の更新"
            ],
            correctAnswerIndex: 2,
            explanation: "借主が契約期間満了後に賃料を支払わない場合、貸主は遅延損害金を請求できます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約書に記載されるべき物件の状態として正しいものはどれか。",
            choices: [
                "物件の築年数",
                "物件の所有者の氏名",
                "物件の所在地",
                "物件の評価額"
            ],
            correctAnswerIndex: 0,
            explanation: "契約書には物件の築年数が記載されるべきです。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金が返還されない場合に借主が行うべき手続きとして正しいものはどれか。",
            choices: [
                "契約解除通知の送付",
                "仲裁機関への申し立て",
                "裁判所への訴訟",
                "貸主への通知"
            ],
            correctAnswerIndex: 2,
            explanation: "敷金が返還されない場合、借主は裁判所への訴訟を行うことができます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、売主が提供するべき情報として正しいものはどれか。",
            choices: [
                "物件の現状",
                "物件の将来価値",
                "物件の使用予定",
                "物件の将来の賃料"
            ],
            correctAnswerIndex: 0,
            explanation: "売主は物件の現状を正確に提供する義務があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約解除が認められる理由として正しいものはどれか。",
            choices: [
                "借主の収入減少",
                "借主の長期不在",
                "借主の違法行為",
                "借主の転職"
            ],
            correctAnswerIndex: 2,
            explanation: "契約解除が認められる理由としては、借主の違法行為があります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、売主が提供するべき書類として正しいものはどれか。",
            choices: [
                "登記簿謄本",
                "物件の図面",
                "物件の将来価値予測",
                "物件の修繕履歴"
            ],
            correctAnswerIndex: 1,
            explanation: "売主は物件の図面を提供する必要があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、貸主が賃料の支払いを催促する際の方法として正しいものはどれか。",
            choices: [
                "口頭での催促",
                "書面での催促",
                "仲裁機関への通知",
                "裁判所への訴訟"
            ],
            correctAnswerIndex: 1,
            explanation: "貸主は書面で賃料の支払いを催促することが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、買主が負担する可能性がある費用として正しいものはどれか。",
            choices: [
                "売主の引越し費用",
                "売主のローン残債",
                "売主の仲介手数料",
                "物件のリフォーム費用"
            ],
            correctAnswerIndex: 3,
            explanation: "買主が負担する可能性がある費用として、物件のリフォーム費用があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約を更新する際に支払うべき費用として正しいものはどれか。",
            choices: [
                "更新料",
                "礼金",
                "保証金",
                "敷金"
            ],
            correctAnswerIndex: 0,
            explanation: "契約を更新する際には、更新料を支払うことが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、物件の引渡し時に必要な手続きとして正しいものはどれか。",
            choices: [
                "引渡し書の作成",
                "引渡し金の支払い",
                "物件の検査",
                "所有権の移転登記"
            ],
            correctAnswerIndex: 3,
            explanation: "物件の引渡し時には、所有権の移転登記が必要です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、手付金の額として一般的に設定される割合はどれか。",
            choices: [
                "売買価格の5％",
                "売買価格の10％",
                "売買価格の20％",
                "売買価格の30％"
            ],
            correctAnswerIndex: 1,
            explanation: "手付金の額は一般的に売買価格の10％程度に設定されます。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、礼金の返還が行われる場合はどれか。",
            choices: [
                "契約期間満了時",
                "契約更新時",
                "契約解除時",
                "礼金の返還は行われない"
            ],
            correctAnswerIndex: 3,
            explanation: "礼金は返還されない費用です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、登記費用を負担するのは誰か。",
            choices: [
                "売主",
                "買主",
                "双方で折半",
                "仲介業者"
            ],
            correctAnswerIndex: 1,
            explanation: "登記費用は買主が負担するのが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約書に記載すべき重要事項として正しいものはどれか。",
            choices: [
                "物件の築年数",
                "借主の年齢",
                "借主の職業",
                "貸主の趣味"
            ],
            correctAnswerIndex: 0,
            explanation: "契約書には物件の築年数が記載されるべき重要事項です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約解除の際に返還される手付金の額として正しいものはどれか。",
            choices: [
                "手付金の全額",
                "手付金の半額",
                "手付金の倍額",
                "手付金の三倍額"
            ],
            correctAnswerIndex: 2,
            explanation: "契約解除の際、手付金の倍額が返還されます。"
        ),
        QuizQuestion(
            question: "不動産の相続において、法定相続人が遺産分割協議書を作成する目的は何か。",
            choices: [
                "相続税の軽減",
                "相続人間の協議結果を明確にするため",
                "相続放棄の手続き",
                "相続財産の評価"
            ],
            correctAnswerIndex: 1,
            explanation: "遺産分割協議書は、相続人間の協議結果を明確にするために作成されます。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に借主が無断で物件を改装した場合の対応として正しいものはどれか。",
            choices: [
                "即時契約解除",
                "改装費用の請求",
                "原状回復の要求",
                "賃料の値上げ"
            ],
            correctAnswerIndex: 2,
            explanation: "無断改装の場合、貸主は原状回復を要求することができます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、物件の引渡し前に行うべき手続きとして正しいものはどれか。",
            choices: [
                "物件の検査",
                "契約解除通知",
                "売買価格の再交渉",
                "所有権移転の登記"
            ],
            correctAnswerIndex: 0,
            explanation: "物件の引渡し前には、物件の状態を確認するために物件検査を行います。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約期間満了前に退去する場合の手続きとして正しいものはどれか。",
            choices: [
                "契約解除通知の送付",
                "敷金の返還請求",
                "礼金の返還請求",
                "更新料の支払い"
            ],
            correctAnswerIndex: 0,
            explanation: "借主が契約期間満了前に退去する場合、契約解除通知を貸主に送付する必要があります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、売主が提供するべき義務として正しいものはどれか。",
            choices: [
                "買主のローン保証",
                "物件の現状維持",
                "物件のリフォーム",
                "契約書の作成"
            ],
            correctAnswerIndex: 1,
            explanation: "売主は物件の現状維持を提供する義務があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の返還が遅延した場合の対応として正しいものはどれか。",
            choices: [
                "貸主に対する遅延損害金の請求",
                "貸主に対する慰謝料の請求",
                "契約の即時解除",
                "裁判所への訴訟"
            ],
            correctAnswerIndex: 0,
            explanation: "敷金の返還が遅延した場合、遅延損害金を請求できます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約解除が認められるケースとして正しいものはどれか。",
            choices: [
                "売主が物件の瑕疵を隠していた場合",
                "買主が登記費用を支払わなかった場合",
                "売主が引渡しを遅延した場合",
                "買主がローン審査に通らなかった場合"
            ],
            correctAnswerIndex: 0,
            explanation: "売主が物件の瑕疵を隠していた場合、契約解除が認められます。"
        ),
        QuizQuestion(
            question: "不動産の相続において、法定相続分を超える相続を行う場合に必要な手続きとして正しいものはどれか。",
            choices: [
                "遺産分割協議",
                "遺留分減殺請求",
                "相続放棄",
                "死因贈与"
            ],
            correctAnswerIndex: 0,
            explanation: "法定相続分を超える相続を行う場合、遺産分割協議が必要です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に借主が原状回復を行わなければならない場合、借主が負担する費用として正しいものはどれか。",
            choices: [
                "修繕費",
                "賃料",
                "敷金",
                "礼金"
            ],
            correctAnswerIndex: 0,
            explanation: "原状回復を行う場合、借主は修繕費を負担します。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約書に含まれるべき重要事項として正しいものはどれか。",
            choices: [
                "売主の職歴",
                "買主の住所",
                "物件の面積",
                "買主の年収"
            ],
            correctAnswerIndex: 2,
            explanation: "契約書には物件の面積が含まれるべき重要事項です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、賃料の支払い方法として一般的なものはどれか。",
            choices: [
                "一括前払い",
                "毎月末払い",
                "毎月前払い",
                "年一回払い"
            ],
            correctAnswerIndex: 2,
            explanation: "賃料の支払い方法としては、毎月前払いが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約成立後に売主が負担する費用として正しいものはどれか。",
            choices: [
                "物件引渡し手数料",
                "仲介手数料",
                "契約書作成費用",
                "固定資産税"
            ],
            correctAnswerIndex: 3,
            explanation: "契約成立後、売主が負担する費用として固定資産税があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に貸主が賃料の値上げを行うためには何が必要か。",
            choices: [
                "借主の同意",
                "契約書の記載",
                "市場の賃料相場の変動",
                "裁判所の許可"
            ],
            correctAnswerIndex: 0,
            explanation: "賃料の値上げを行うためには、借主の同意が必要です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、手付解除の際に買主が支払うべき金額はどれか。",
            choices: [
                "手付金の全額",
                "手付金の半額",
                "手付金の倍額",
                "手付金の三倍額"
            ],
            correctAnswerIndex: 2,
            explanation: "手付解除の際、買主は手付金の倍額を支払います。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺留分が侵害された場合に行う手続きとして正しいものはどれか。",
            choices: [
                "遺産分割協議",
                "遺留分減殺請求",
                "相続放棄",
                "死因贈与"
            ],
            correctAnswerIndex: 1,
            explanation: "遺留分が侵害された場合、遺留分減殺請求を行います。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約締結時に必要な書類として正しいものはどれか。",
            choices: [
                "固定資産税評価証明書",
                "所有権移転登記申請書",
                "建築確認済証",
                "印鑑証明書"
            ],
            correctAnswerIndex: 3,
            explanation: "契約締結時には、印鑑証明書が必要です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、更新料を支払う義務が発生するのはどのタイミングか。",
            choices: [
                "契約期間満了前",
                "契約期間満了後",
                "契約締結時",
                "物件引渡し時"
            ],
            correctAnswerIndex: 0,
            explanation: "更新料は契約期間満了前に支払う義務が発生します。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、ローン特約が付される場合、ローン特約が無効になる条件はどれか。",
            choices: [
                "買主がローンの審査に通らなかった場合",
                "売主が物件を引渡さなかった場合",
                "買主が手付金を支払わなかった場合",
                "契約締結後3ヶ月以内にローン審査が完了しなかった場合"
            ],
            correctAnswerIndex: 0,
            explanation: "買主がローンの審査に通らなかった場合、ローン特約が無効になります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が賃料を滞納した場合の貸主の対応として正しいものはどれか。",
            choices: [
                "直ちに契約を解除する",
                "遅延損害金を請求する",
                "即時強制退去を命じる",
                "賃料の減額を提案する"
            ],
            correctAnswerIndex: 1,
            explanation: "借主が賃料を滞納した場合、貸主は遅延損害金を請求することができます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、買主が行うべき重要事項説明の確認時期はいつか。",
            choices: [
                "契約締結前",
                "契約締結後",
                "物件引渡し前",
                "物件引渡し後"
            ],
            correctAnswerIndex: 0,
            explanation: "重要事項説明は契約締結前に行います。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、敷金の役割として正しいものはどれか。",
            choices: [
                "賃料の前払い",
                "物件の修繕費用の保証",
                "借主の信用保証",
                "礼金の代わり"
            ],
            correctAnswerIndex: 1,
            explanation: "敷金は物件の修繕費用の保証として使用されます。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、手付解除が認められるのはどのような場合か。",
            choices: [
                "売主が物件を引渡さなかった場合",
                "買主がローン審査に通らなかった場合",
                "売主が契約書を作成しなかった場合",
                "買主が物件の検査を行わなかった場合"
            ],
            correctAnswerIndex: 2,
            explanation: "手付解除は、売主が契約書を作成しなかった場合に認められます。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺言書が存在しない場合、遺産分割協議が必要となるのはどのような場合か。",
            choices: [
                "相続人が一人の場合",
                "相続財産が少ない場合",
                "相続人が複数の場合",
                "相続人が全員未成年の場合"
            ],
            correctAnswerIndex: 2,
            explanation: "遺言書が存在せず、相続人が複数いる場合、遺産分割協議が必要です。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約期間満了前に退去する場合の対応として正しいものはどれか。",
            choices: [
                "契約解除通知の送付",
                "礼金の返還請求",
                "更新料の支払い",
                "違約金の支払い"
            ],
            correctAnswerIndex: 3,
            explanation: "借主が契約期間満了前に退去する場合、違約金を支払うことが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、物件の引渡し前に行うべき手続きとして正しいものはどれか。",
            choices: [
                "物件の検査",
                "契約解除通知",
                "売買価格の再交渉",
                "所有権移転の登記"
            ],
            correctAnswerIndex: 0,
            explanation: "物件の引渡し前には、物件の状態を確認するために物件検査を行います。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約解除が認められる理由として正しいものはどれか。",
            choices: [
                "借主の収入減少",
                "借主の長期不在",
                "借主の違法行為",
                "借主の転職"
            ],
            correctAnswerIndex: 2,
            explanation: "契約解除が認められる理由としては、借主の違法行為があります。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約書に含まれるべき情報として正しいものはどれか。",
            choices: [
                "売主の職歴",
                "買主の住所",
                "物件の築年数",
                "買主の年収"
            ],
            correctAnswerIndex: 2,
            explanation: "契約書には物件の築年数が含まれるべきです。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、賃料の支払い方法として一般的なものはどれか。",
            choices: [
                "一括前払い",
                "毎月末払い",
                "毎月前払い",
                "年一回払い"
            ],
            correctAnswerIndex: 2,
            explanation: "賃料の支払い方法としては、毎月前払いが一般的です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約成立後に売主が負担する費用として正しいものはどれか。",
            choices: [
                "物件引渡し手数料",
                "仲介手数料",
                "契約書作成費用",
                "固定資産税"
            ],
            correctAnswerIndex: 3,
            explanation: "契約成立後、売主が負担する費用として固定資産税があります。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、契約期間中に貸主が賃料の値上げを行うためには何が必要か。",
            choices: [
                "借主の同意",
                "契約書の記載",
                "市場の賃料相場の変動",
                "裁判所の許可"
            ],
            correctAnswerIndex: 0,
            explanation: "賃料の値上げを行うためには、借主の同意が必要です。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、手付解除の際に買主が支払うべき金額はどれか。",
            choices: [
                "手付金の全額",
                "手付金の半額",
                "手付金の倍額",
                "手付金の三倍額"
            ],
            correctAnswerIndex: 2,
            explanation: "手付解除の際、買主は手付金の倍額を支払います。"
        ),
        QuizQuestion(
            question: "不動産の相続において、遺留分が侵害された場合に行う手続きとして正しいものはどれか。",
            choices: [
                "遺産分割協議",
                "遺留分減殺請求",
                "相続放棄",
                "死因贈与"
            ],
            correctAnswerIndex: 1,
            explanation: "遺留分が侵害された場合、遺留分減殺請求を行います。"
        ),
        QuizQuestion(
            question: "不動産の売買契約において、契約書に含まれるべき物件の情報として正しいものはどれか。",
            choices: [
                "物件の現状",
                "物件の将来価値",
                "物件の使用予定",
                "物件の将来の賃料"
            ],
            correctAnswerIndex: 0,
            explanation: "契約書には物件の現状が含まれるべきです。"
        ),
        QuizQuestion(
            question: "不動産の賃貸借契約において、借主が契約期間中に物件を無断で転貸した場合、貸主がとるべき対応として正しいものはどれか。",
            choices: [
                "契約の解除",
                "転貸の許可",
                "賃料の値上げ",
                "契約内容の変更"
            ],
            correctAnswerIndex: 0,
            explanation: "無断転貸は契約違反となり、貸主は契約を解除することができます。"
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicJukugoBeginner, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicJukugoBeginnerList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicJukugoBeginnerList(isPresenting: .constant(false))
    }
}






