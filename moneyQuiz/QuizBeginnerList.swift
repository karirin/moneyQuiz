//
//  QuizList.swift
//  it
//
//  Created by hashimo ryoya on 2023/09/16.
//

import SwiftUI



struct QuizBeginnerList: View {
    @Binding var isPresenting: Bool
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "CRM（Customer Relationship Management）は、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うビジネスモデルです。"
//        )
//        ]
    let quizBeginnerList: [QuizQuestion] = [
        QuizQuestion(
        question: "節約に最も効果的な方法はどれですか？",
        choices: [
        "ブランド品を購入する",
        "定期的に貯金をする",
        "不要なものを頻繁に購入する",
        "高利息の借金を増やす"
        ],
        correctAnswerIndex: 1,
        explanation: "節約する最良の方法は、不要な出費を減らし、定期的に貯金することです。これにより、財政的な安定と将来への備えが可能になります。"
        ),

        QuizQuestion(
        question: "予算管理に役立つツールはどれですか？",
        choices: [
        "ショッピングリスト",
        "ゲームアプリ",
        "宝くじ",
        "高価な食事"
        ],
        correctAnswerIndex: 0,
        explanation: "ショッピングリストを作成することで、必要な物だけを購入し、余計な出費を避けることができます。これは効果的な予算管理の基本です。"
        ),

        QuizQuestion(
        question: "退職後の生活のために何をするべきですか？",
        choices: [
        "貯蓄と投資",
        "旅行",
        "贅沢な買い物",
        "借金"
        ],
        correctAnswerIndex: 0,
        explanation: "退職後の安定した生活を送るためには、若いうちから貯蓄と投資を始めることが重要です。これにより、退職後も安定した収入源を確保できます。"
        ),

        QuizQuestion(
        question: "クレジットカードの使い過ぎを防ぐ方法はどれですか？",
        choices: [
        "利用限度額を高く設定する",
        "支払いを延期する",
        "月々の支出を追跡する",
        "複数のカードを使い分ける"
        ],
        correctAnswerIndex: 2,
        explanation: "クレジットカードの使い過ぎを防ぐには、月々の支出を追跡し、予算内での使用に留めることが重要です。これにより、無駄遣いや借金のリスクを減らすことができます。"
        ),

        QuizQuestion(
        question: "定期預金とは何ですか？",
        choices: [
        "銀行に預けたお金を定められた期間引き出さないことで、通常より高い利息を得ること",
        "毎月一定額を支払う保険商品",
        "株式や債券に投資するための口座",
        "電子マネーをチャージするためのアカウント"
        ],
        correctAnswerIndex: 0,
        explanation: "定期預金は、一定期間お金を銀行に預けることで、普通預金よりも高い利息を得られる貯金方法です。資金の安全性と確実な収益が魅力です。"
        ),
        QuizQuestion(
        question: "クレジットカードの最低支払額を毎月支払う場合、どのような影響がありますか？",
        choices: [
        "全額返済よりも早く借金を返済できる",
        "高い利息がかかり、全体の借金が増加する可能性がある",
        "クレジットスコアが上がる",
        "追加の手数料が発生しない"
        ],
        correctAnswerIndex: 1,
        explanation: "最低支払額だけを支払うと、残りの借金に対して高い利息がかかり、結果的に返済総額が増加する可能性があります。"
        ),

        QuizQuestion(
        question: "緊急時の貯金（非常用貯金）の目安は、通常どれくらいですか？",
        choices: [
        "月収の2倍",
        "年収の10％",
        "生活費の3～6ヶ月分",
        "年収の半分"
        ],
        correctAnswerIndex: 2,
        explanation: "緊急時に備えて、生活費の3～6ヶ月分の貯金をしておくことが推奨されます。これにより、予期せぬ出費や収入の途絶えに対応できます。"
        ),

        QuizQuestion(
        question: "住宅ローンを組む際に考慮すべきことは何ですか？",
        choices: [
        "利息の種類（固定金利か変動金利か）",
        "近隣のスーパーマーケットの数",
        "家の色",
        "ガレージの大きさ"
        ],
        correctAnswerIndex: 0,
        explanation: "住宅ローンを選ぶ際には、固定金利と変動金利のどちらが自分に適しているかを考慮することが重要です。金利タイプによって、支払い額やリスクが異なります。"
        ),

        QuizQuestion(
        question: "予期せぬ出費に備える最良の方法は何ですか？",
        choices: [
        "緊急用の貯金を設ける",
        "クレジットカードの限度額を増やす",
        "贅沢な旅行を計画する",
        "高価な趣味に投資する"
        ],
        correctAnswerIndex: 0,
        explanation: "予期せぬ出費に備えるためには、緊急用の貯金を設けることが最良です。これにより、突然の支出があった場合にも安心して対応できます。"
        ),

        QuizQuestion(
        question: "若いうちに投資を始める利点は何ですか？",
        choices: [
        "即座に大金を得ることができる",
        "複利の効果を最大限に活用できる",
        "リスクが全くない",
        "税金がかからない"
        ],
        correctAnswerIndex: 1,
        explanation: "若いうちに投資を始めると、複利の効果により長期間で資産が増加する可能性が高まります。早期投資は時間を利用することで大きなリターンを生むことができます。"
        ),
        QuizQuestion(
        question: "自動車保険を選ぶ際、どの要素を重視すべきですか？",
        choices: [
        "保険の色とデザイン",
        "友人のおすすめ",
        "保険料とカバー範囲",
        "保険会社の広告"
        ],
        correctAnswerIndex: 2,
        explanation: "自動車保険を選ぶ際には、保険料とどのような事故や損害をカバーするかを重視すべきです。これにより、必要な保護を適切な価格で得ることができます。"
        ),

        QuizQuestion(
        question: "子どもにお金の価値を教える効果的な方法は何ですか？",
        choices: [
        "彼らに無限の小遣いを与える",
        "家事や勉強に対する報酬として小遣いを与える",
        "お金の話をしない",
        "彼らに高価な贈り物を常にする"
        ],
        correctAnswerIndex: 1,
        explanation: "子どもにお金の価値を教えるためには、家事や勉強などの行動に対して小遣いを報酬として与える方法が効果的です。これにより、お金を稼ぐためには努力が必要であるということを理解させることができます。"
        ),

        QuizQuestion(
        question: "節税対策として有効なのはどれですか？",
        choices: [
        "高額な消費を行う",
        "退職金積立の活用",
        "税金の支払いを遅らせる",
        "収入を隠す"
        ],
        correctAnswerIndex: 1,
        explanation: "退職金積立などの特定の貯蓄プランに参加することは、節税対策として効果的です。これらのプランは税制上の優遇を受けることができ、将来の資産形成にも役立ちます。"
        ),

        QuizQuestion(
        question: "オンラインショッピングでお金を節約する方法はどれですか？",
        choices: [
        "すべてのアイテムを即購入する",
        "クーポンや割引を利用する",
        "最も高価な商品を選ぶ",
        "ショッピングカートにアイテムを入れたままにする"
        ],
        correctAnswerIndex: 1,
        explanation: "オンラインショッピングでは、クーポンや割引を積極的に活用することで、支出を減らすことができます。多くのオンラインストアが定期的にプロモーションを行っているため、賢く利用することが節約の鍵です。"
        ),

        QuizQuestion(
        question: "個人の財務計画において、最も重要なステップは何ですか？",
        choices: [
        "友人にお金を貸す",
        "最新の技術製品を購入する",
        "目標に基づいた予算を作成する",
        "すべてのお金を現金で保持する"
        ],
        correctAnswerIndex: 2,
        explanation: "個人の財務計画においては、自分の目標に基づいた予算の作成が最も重要です。これにより、収入と支出を管理し、将来的な目標達成に向けて効果的に資金を割り当てることができます。"
        ),
        
        QuizQuestion(
        question: "資産を増やすために重要なのはどれですか？",
        choices: [
        "すべてのお金を預金口座に入れる",
        "定期的に貯蓄と投資を行う",
        "ショッピングを頻繁に行う",
        "友人とお金を共有する"
        ],
        correctAnswerIndex: 1,
        explanation: "資産を増やすためには、定期的な貯蓄と分散した投資が重要です。これによりリスクを管理しつつ、時間をかけて資産を増やすことができます。"
        ),

        QuizQuestion(
        question: "学生ローンを返済する際に考慮すべきことは何ですか？",
        choices: [
        "返済期間をできるだけ長くする",
        "最低返済額のみを支払う",
        "返済計画を作成し、迅速に返済を行う",
        "ローンの返済を無視する"
        ],
        correctAnswerIndex: 2,
        explanation: "学生ローンを返済する際には、返済計画を作成し、できるだけ迅速に返済することが大切です。これにより、返済にかかる利息を最小限に抑えることができます。"
        ),

        QuizQuestion(
        question: "信用スコアを向上させる方法はどれですか？",
        choices: [
        "頻繁に新しいクレジットカードを開設する",
        "支払いを定期的に遅らせる",
        "信用枠を最大限に利用する",
        "定時に請求書を支払い、借金を減らす"
        ],
        correctAnswerIndex: 3,
        explanation: "信用スコアを向上させるためには、定時に請求書を支払い、借金を管理することが効果的です。これにより、信用度が向上し、将来的な借入れ条件が改善されます。"
        ),

        QuizQuestion(
        question: "退職計画において、重要な考慮事項は何ですか？",
        choices: [
        "すべての資産を一度に使い果たす",
        "退職後の生活費の見積もりを立てる",
        "職を辞めた後は仕事をしない",
        "退職金を友人と共有する"
        ],
        correctAnswerIndex: 1,
        explanation: "退職計画においては、退職後の生活費の見積もりを立てることが重要です。これにより、必要な貯蓄額を把握し、退職後も安定した生活を送ることができます。"
        ),

        QuizQuestion(
        question: "長期的な財産管理のためには、どのようなアプローチが適切ですか？",
        choices: [
        "一度に大きなリスクを取る",
        "定期的な貯蓄と分散投資",
        "すべてのお金を即座に使う",
        "金融市場の短期的な動向に注目する"
        ],
        correctAnswerIndex: 1,
        explanation: "長期的な財産管理には、定期的な貯蓄とリスクを分散させた投資が適切です。これにより、市場の変動に対するリスクを軽減し、安定した資産成長を目指すことができます。"
        ),
        QuizQuestion(
            question: "財務状況の健全性を維持するためには、何を避けるべきですか？",
            choices: [
            "定期的な節約",
            "多額の借金",
            "予算の作成",
            "投資の機会"
            ],
            correctAnswerIndex: 1,
            explanation: "財務状況の健全性を維持するためには、多額の借金を避けることが重要です。借金は財政的なストレスの原因となり、他の財務目標の達成を妨げる可能性があります。"
            ),

            QuizQuestion(
            question: "子どもの教育費用の計画において最も重要なのは何ですか？",
            choices: [
            "子どものおもちゃに多くのお金を使う",
            "教育費用のための長期的な貯蓄計画を立てる",
            "教育に関する計画を立てない",
            "すべてのお金を現在の娯楽に使う"
            ],
            correctAnswerIndex: 1,
            explanation: "子どもの教育費用の計画においては、長期的な貯蓄計画を立てることが最も重要です。これにより、子どもの教育に必要な資金を確保し、将来の財政的負担を軽減することができます。"
            ),

            QuizQuestion(
            question: "家計を効率的に管理するためには、どのアクションが最も重要ですか？",
            choices: [
            "毎月の支出を追跡する",
            "すべてのお金を現金で保持する",
            "必要ない物を定期的に購入する",
            "予算を立てずに支出する"
            ],
            correctAnswerIndex: 0,
            explanation: "家計を効率的に管理するためには、毎月の支出を追跡し、予算内での支出を確実にすることが重要です。これにより、無駄な支出を削減し、財政的な目標に近づくことができます。"
            ),

            QuizQuestion(
            question: "不動産投資を考慮する際の主なリスクは何ですか？",
            choices: [
            "安定した収入が保証される",
            "プロパティの価値が下がる可能性がある",
            "不動産は常に価値を増す",
            "管理が全く必要ない"
            ],
            correctAnswerIndex: 1,
            explanation: "不動産投資を行う際の主なリスクの一つは、不動産の価値が市場の変動によって下がる可能性があることです。市場の変動や地域の経済状況などによって、投資のリターンが影響を受ける可能性があります。"
            ),

            QuizQuestion(
            question: "家族のための生命保険を選ぶ際、どの要因を最も重視すべきですか？",
            choices: [
            "保険のブランド名",
            "親戚の意見",
            "カバー範囲と保険料",
            "保険の色"
            ],
            correctAnswerIndex: 2,
            explanation: "生命保険を選ぶ際には、カバー範囲と保険料を重視すべきです。これにより、適切な保護を適切なコストで得ることができ、家族の財政的な安全を確保できます。"
            ),
        QuizQuestion(
        question: "老後の医療費に備えるためには、どのような計画が必要ですか？",
        choices: [
        "すべての貯蓄を早期に使い果たす",
        "将来の医療費に対する貯蓄と保険",
        "医療費について考えない",
        "友人に医療費を支払ってもらう"
        ],
        correctAnswerIndex: 1,
        explanation: "老後の医療費に備えるためには、将来の医療費用に対する貯蓄と適切な保険の準備が必要です。これにより、高齢になった際の医療費の負担を軽減できます。"
        ),

        QuizQuestion(
        question: "経済的な安定を得るためには、どの行動が最も効果的ですか？",
        choices: [
        "すべてのお金をすぐに使う",
        "定期的な貯金",
        "高リスクの投資に全資産を投じる",
        "財務計画を立てない"
        ],
        correctAnswerIndex: 1,
        explanation: "経済的な安定を得るためには、定期的な貯金が最も効果的です。これにより、将来的な目標や緊急時の資金を確保し、財政的な安心感を持つことができます。"
        ),

        QuizQuestion(
        question: "子供たちにお金の価値を教える効果的な方法はどれですか？",
        choices: [
        "彼らにすべての要望を満たさせる",
        "お金の管理方法を教える",
        "お金について一切話さない",
        "お金の使い方についての制限を設けない"
        ],
        correctAnswerIndex: 1,
        explanation: "子供たちにお金の価値を教える最も効果的な方法は、お金の管理方法を教えることです。これには、貯金の重要性、予算の立て方、そして支出の管理方法などが含まれます。実践的な金銭教育は、子供たちが将来的に賢い金融決定を下すのに役立ちます。"
        ),

        QuizQuestion(
        question: "信用カードのデット（借金）を管理するためには、どのような戦略が効果的ですか？",
        choices: [
        "追加の信用カードを取得する",
        "定期的な支払い計画を立てる",
        "支払いを無視する",
        "最低限の支払いのみを行う"
        ],
        correctAnswerIndex: 1,
        explanation: "信用カードの借金を効果的に管理するためには、定期的な支払い計画を立てることが重要です。これにより、借金を返済するための明確な道筋が確立され、返済プロセスがスムーズに進むことが期待されます。"
        ),

        QuizQuestion(
        question: "将来の大きな購入（例えば家や車）のために貯金する際、どのような戦略が有効ですか？",
        choices: [
        "すぐに高価な物を購入する",
        "購入のための目標とタイムラインを設定する",
        "借金を増やして購入する",
        "貯金を全くしない"
        ],
        correctAnswerIndex: 1,
        explanation: "大きな購入のために貯金する際には、購入のための具体的な目標とタイムラインを設定することが効果的です。これにより、必要な金額をどの程度の期間で貯めるべきかを明確にし、貯金の進捗を追跡することができます。"
        ),
        QuizQuestion(
        question: "日本の国債とは何ですか？",
        choices: [
        "政府が発行する借金証書で、投資家に利息を支払う",
        "個人向けの株式",
        "金融市場で取引される商品",
        "銀行が発行する定期預金"
        ],
        correctAnswerIndex: 0,
        explanation: "日本の国債は、政府が資金を調達するために発行する借金証書です。これを購入した投資家は、定められた期間内に利息を受け取ります。"
        ),

        QuizQuestion(
        question: "日本での消費税率は何を基準に決定されますか？",
        choices: [
        "各都道府県の平均所得",
        "政府の経済政策",
        "国民の投票",
        "国際市場の状況"
        ],
        correctAnswerIndex: 1,
        explanation: "日本の消費税率は政府の経済政策に基づいて決定されます。税率は、国の財政状況や経済成長などの要因を考慮して設定されます。"
        ),

        QuizQuestion(
        question: "日本の株式市場において、株価が上昇する主な理由は何ですか？",
        choices: [
        "企業の業績の改善",
        "全ての企業の給料の増加",
        "政府の規制緩和",
        "国際市場の安定"
        ],
        correctAnswerIndex: 0,
        explanation: "株式市場において株価が上昇する主な理由は、企業の業績の改善です。業績が良いと、投資家はその企業の株をより価値があると見なし、株価が上がります。"
        ),

        QuizQuestion(
        question: "家計簿をつける主な利点は何ですか？",
        choices: [
        "家族とのコミュニケーションを改善する",
        "支出を正確に追跡し、予算管理を効果的に行う",
        "趣味の時間を増やす",
        "友人に印象を与える"
        ],
        correctAnswerIndex: 1,
        explanation: "家計簿をつける主な利点は、日々の支出を正確に追跡し、予算管理を効果的に行うことです。これにより、無駄遣いを減らし、財政状況を改善することができます。"
        ),

        QuizQuestion(
        question: "普通預金とは何ですか？",
        choices: [
        "固定期間で高い利息を得る預金",
        "いつでも自由に引き出せる預金",
        "株式市場で取引される金融商品",
        "保険商品の一種"
        ],
        correctAnswerIndex: 1,
        explanation: "普通預金は、いつでも自由に預け入れや引き出しができる預金口座のことです。利便性が高い反面、利息は比較的低いです。"
        ),
        QuizQuestion(
        question: "予算を立てる主な目的は何ですか？",
        choices: [
        "友人に印象を与える",
        "支出をコントロールし、無駄遣いを防ぐ",
        "高価な買い物を正当化する",
        "銀行の利息を増やす"
        ],
        correctAnswerIndex: 1,
        explanation: "予算を立てる主な目的は、支出をコントロールし、無駄遣いを防ぐことです。予算を設定することで、財政的な目標に焦点を当て、それに沿って行動することができます。"
        ),

        QuizQuestion(
        question: "ローンを選ぶ際に考慮すべき最も重要な要素は何ですか？",
        choices: [
        "ローンの金額",
        "利息率と返済条件",
        "ローンのブランド名",
        "友人の意見"
        ],
        correctAnswerIndex: 1,
        explanation: "ローンを選ぶ際に最も重要な要素は、利息率と返済条件です。低い利息率と適切な返済条件を選ぶことで、返済の負担を軽減し、経済的なストレスを減らすことができます。"
        ),

        QuizQuestion(
        question: "家計で節約するための効果的な方法は何ですか？",
        choices: [
        "すべての買い物にクレジットカードを使用する",
        "定期的に費用を見直し、不必要な支出を削減する",
        "常に最新の技術製品を購入する",
        "広告を見ることを避ける"
        ],
        correctAnswerIndex: 1,
        explanation: "家計で節約するための効果的な方法は、定期的に費用を見直し、不必要な支出を削減することです。これにより、支出を最適化し、無駄遣いを防ぐことができます。"
        ),

        QuizQuestion(
        question: "日本での年金制度の主な目的は何ですか？",
        choices: [
        "老後の生活資金を提供する",
        "若者の就職を促進する",
        "国の税収を増やす",
        "企業の利益を支援する"
        ],
        correctAnswerIndex: 0,
        explanation: "日本の年金制度の主な目的は、老後の生活資金を提供することです。これにより、退職後も安定した生活が送れるように支援されます。"
        ),

        QuizQuestion(
        question: "節税のために有効な方法はどれですか？",
        choices: [
        "収入を少なく申告する",
        "法律で認められている控除を最大限利用する",
        "税金の支払いを避ける",
        "銀行口座を海外に移す"
        ],
        correctAnswerIndex: 1,
        explanation: "節税のためには、法律で認められている控除を最大限利用することが有効です。これにより、合法的に税負担を軽減することができます。"
        ),
        QuizQuestion(
        question: "日本におけるマイホーム購入時の諸経費に通常含まれるのは何ですか？",
        choices: [
        "旅行費",
        "設計料",
        "仲介手数料",
        "教育費"
        ],
        correctAnswerIndex: 2,
        explanation: "マイホーム購入時の諸経費には通常、仲介手数料が含まれます。これは物件の購入に関連する手続きやサービスに対する費用です。"
        ),

        QuizQuestion(
        question: "金利が低下した場合、一般的に何が起こりやすいですか？",
        choices: [
        "住宅ローンの利用が増える",
        "銀行の利益が増加する",
        "人々が節約をやめる",
        "企業の倒産が増える"
        ],
        correctAnswerIndex: 0,
        explanation: "金利が低下すると、住宅ローンの利用が増える傾向にあります。低金利はローンの負担を軽減するため、新たな住宅購入やリファイナンスに適しています。"
        ),

        QuizQuestion(
        question: "クレジットカードの利用限度額とは何を意味しますか？",
        choices: [
        "カードで購入できる商品の数",
        "カード会社が設定した最大借入額",
        "毎月の最小支払い額",
        "年間の利息額"
        ],
        correctAnswerIndex: 1,
        explanation: "クレジットカードの利用限度額は、カード会社が設定した最大借入額のことです。これはカード保有者が一定期間内に利用できる最大金額を指し、この限度を超えると追加の購入や取引ができなくなります。"
        ),

        QuizQuestion(
        question: "定期的な金融レビューの目的は何ですか？",
        choices: [
        "友人との競争",
        "金融目標の進捗状況をチェックし、必要に応じて調整する",
        "銀行口座の利息を確認する",
        "投資のリスクを増やす"
        ],
        correctAnswerIndex: 1,
        explanation: "定期的な金融レビューの目的は、自分の金融目標の進捗状況をチェックし、必要に応じて調整することです。これにより、目標達成に向けて適切な計画を立て直したり、改善策を講じることができます。"
        ),

        QuizQuestion(
        question: "貯蓄を増やすためには、どの行動が有効ですか？",
        choices: [
        "クレジットカードをたくさん持つ",
        "支出を減らし、定期的に貯金する",
        "高リスクの投資をする",
        "友人からの借金を増やす"
        ],
        correctAnswerIndex: 1,
        explanation: "貯蓄を増やすためには、無駄な支出を減らし、定期的に一定額を貯金することが有効です。これにより、経済的余裕を生み出し、将来のための資金を確保できます。"
        ),
        QuizQuestion(
        question: "日本における住民税とは何ですか？",
        choices: [
        "市町村が徴収する税金で、住民の所得に基づいて決定される",
        "国が徴収する税金で、消費に基づいて決定される",
        "地方自治体が徴収する税金で、財産に基づいて決定される",
        "国が徴収する税金で、国民の健康状態に基づいて決定される"
        ],
        correctAnswerIndex: 0,
        explanation: "日本における住民税は、市町村が徴収する税金で、その住民の所得に基づいて決定されます。これには所得税の他にも、資産税や市民税が含まれます。"
        ),

        QuizQuestion(
        question: "インフレーションが発生すると、通常何が起こりますか？",
        choices: [
        "物価が下がり、貨幣の価値が増加する",
        "物価が上がり、貨幣の価値が減少する",
        "株価が安定する",
        "金利がゼロになる"
        ],
        correctAnswerIndex: 1,
        explanation: "インフレーションが発生すると、物価が上昇し、結果的に貨幣の価値が減少します。これは、同じ金額で以前よりも少ない商品やサービスしか購入できなくなることを意味します。"
        ),

        QuizQuestion(
        question: "家庭での電気代を節約するための最良の方法は何ですか？",
        choices: [
        "電気を一切使用しない",
        "節電対策を行い、無駄な電力消費を減らす",
        "電気代の支払いを遅らせる",
        "電気を使う家電をすべて売る"
        ],
        correctAnswerIndex: 1,
        explanation: "家庭での電気代を節約するためには、節電対策を行い、無駄な電力消費を減らすことが効果的です。これには、電気機器の使用を最適化する、省エネ製品を使用するなどの方法があります。"
        ),

        QuizQuestion(
        question: "個人年金保険に加入する主な利点は何ですか？",
        choices: [
        "即時の現金収入を得る",
        "老後の安定した収入源を確保する",
        "株式市場のリスクを回避する",
        "税金を完全に回避する"
        ],
        correctAnswerIndex: 1,
        explanation: "個人年金保険に加入する主な利点は、老後の安定した収入源を確保することです。これにより、退職後も一定の生活水準を維持することができます。"
        ),

        QuizQuestion(
        question: "クレジットスコアを向上させるためには、どのような行動を取るべきですか？",
        choices: [
        "頻繁に新しいクレジットカードを申し込む",
        "支払いを常に遅延させる",
        "信用枠を最大限まで利用する",
        "クレジットカードの支払いを定期的に行い、借金を減らす"
        ],
        correctAnswerIndex: 3,
        explanation: "クレジットスコアを向上させるためには、クレジットカードの支払いを定期的に行い、借金を減らすことが重要です。これにより、信用リスクが低いと見なされ、将来的な融資やクレジットの取得が容易になります。"
        )
    ]
        
//    let quizBeginnerList: [QuizQuestion] = [
////        QuizQuestion(
////            question: "あああああああああああああああああああああああああああああああああああああああああああああああああああああああああ",
////            choices: [
////                "電源ケーブル",
////                "Eメールの添付ファイル",
////                "モニター",
////                "キーボード"
////            ],
////            correctAnswerIndex: 1,
////            explanation: " Eメールの添付ファイルは、コンピュータウイルスの感染経路として非常に一般的です。不明な送信元からのメールの添付ファイルは開かないよう注意が必要です。"
////        )
//        QuizQuestion(
//            question: "コンピュータウイルスの感染経路として最も一般的なものは？",
//            choices: [
//                "電源ケーブル",
//                "Eメールの添付ファイル",
//                "モニター",
//                "キーボード"
//            ],
//            correctAnswerIndex: 1,
//            explanation: " Eメールの添付ファイルは、コンピュータウイルスの感染経路として非常に一般的です。不明な送信元からのメールの添付ファイルは開かないよう注意が必要です。"
//        ),
//
//        QuizQuestion(
//            question: "クラウドコンピューティングのサービスモデルで、インフラストラクチャを提供するものは？",
//            choices: [
//                "SaaS",
//                "PaaS",
//                "IaaS",
//                "FaaS"
//            ],
//            correctAnswerIndex: 2,
//            explanation: "IaaS（Infrastructure as a Service）は、インフラストラクチャを提供するクラウドサービスモデルです。"
//        ),
//
//        QuizQuestion(
//            question: "プロジェクト管理手法で、タスク間の依存関係を線で結んで表現するものは？",
//            choices: [
//                "ガントチャート",
//                "PERT図",
//                "フローチャート",
//                "マトリックス図"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "PERT図は、タスク間の依存関係を線で結んで表現するプロジェクト管理手法です。"
//        ),
//
//        QuizQuestion(
//            question: "情報セキュリティのリスクを評価する際、リスクの大きさを算出するための要素は？",
//            choices: [
//                "脅威 x 脆弱性",
//                "脅威 + 脆弱性",
//                "脅威 - 脆弱性",
//                "脅威 / 脆弱性"
//            ],
//            correctAnswerIndex: 0,
//            explanation: "情報セキュリティのリスクの大きさは、「脅威」と「脆弱性」の積によって算出されます。"
//        ),
//
//        QuizQuestion(
//            question: "データベースで、一意にレコードを特定するためのキーを何というか？",
//            choices: [
//                "外部キー",
//                "主キー",
//                "候補キー",
//                "参照キー"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "主キーは、データベースのテーブル内でレコードを一意に特定するためのキーです。"
//        ),
//
//        QuizQuestion(
//            question: "システム開発のライフサイクルの中で、システムが正しく動作するかを確認するフェーズは？",
//            choices: [
//                "要件定義",
//                "設計",
//                "実装",
//                "テスト"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "システム開発のライフサイクルにおいて、システムが正しく動作するかを確認するフェーズは「テスト」フェーズです。"
//        ),
//
//        QuizQuestion(
//            question: "ネットワークのトポロジで、すべてのデバイスが中央のデバイスに直接接続されている形状は？",
//            choices: [
//                "スター型",
//                "バス型",
//                "リング型",
//                "メッシュ型"
//            ],
//            correctAnswerIndex: 0,
//            explanation: "スター型トポロジは、すべてのデバイスが中央のデバイスに直接接続されているネットワークの形状です。"
//        ),
//
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "CRM（Customer Relationship Management）は、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うビジネスモデルです。"
//        ),
//
//        QuizQuestion(
//            question: "システムのバックアップ方法で、最後のフルバックアップ以降の変更分だけを保存する方法は？",
//            choices: [
//                "フルバックアップ",
//                "差分バックアップ",
//                "増分バックアップ",
//                "ミラーバックアップ"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "最後のフルバックアップ以降の変更分だけを保存する方法を「差分バックアップ」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "ソフトウェアのライセンスで、ソースコードが公開され、自由に改変や再配布が許可されているものは？",
//            choices: [
//                "フリーウェア",
//                "シェアウェア",
//                "オープンソース",
//                "クローズドソース"
//            ],
//            correctAnswerIndex: 2,
//            explanation: "ソースコードが公開され、自由に改変や再配布が許可されているソフトウェアのライセンスを「オープンソース」といいます。"
//        ),
//
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
//        ),
//
//        QuizQuestion(
//            question: "プログラミングで、同じ処理を繰り返し実行する制御構造は？",
//            choices: [
//                "分岐",
//                "ループ",
//                "ジャンプ",
//                "スイッチ"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "同じ処理を繰り返し実行する制御構造を「ループ」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "データベースのトランザクション処理で、一連の処理が全て完了するか、あるいは全てなかったことにする性質は？",
//            choices: [
//                "分離性",
//                "持続性",
//                "一貫性",
//                "原子性"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "一連の処理が全て完了するか、あるいは全てなかったことにする性質を「原子性」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "情報セキュリティの方針やルールを組織全体に明確に伝えるための文書は？",
//            choices: [
//                "SLA",
//                "SOP",
//                "NDA",
//                "情報セキュリティポリシー"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "情報セキュリティの3つの基本的な要素として、機密性、完全性に続くものは「可用性」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "システム開発の手法で、短い期間を設けて繰り返し開発を行う方法は？",
//            choices: [
//                "スクラム",
//                "ウォーターフォール",
//                "スパイラル",
//                "カンバン"
//            ],
//            correctAnswerIndex: 0,
//            explanation: "短い期間を設けて繰り返し開発を行う方法を「スクラム」といいます。"
//        ),
//        QuizQuestion(
//            question: "情報セキュリティの3つの基本的な要素として、機密性、完全性に続くものは何か？",
//            choices: [
//                "可用性",
//                "可視性",
//                "可変性",
//                "可搬性"
//            ],
//            correctAnswerIndex: 0,
//            explanation: "情報セキュリティの3つの基本的な要素として、機密性、完全性に続くものは「可用性」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "ウェブページの閲覧時に、サーバーとクライアント間で情報のやり取りを暗号化するためのプロトコルは何か？",
//            choices: [
//                "FTP",
//                "HTTP",
//                "HTTPS",
//                "SMTP"
//            ],
//            correctAnswerIndex: 2,
//            explanation: "サーバーとクライアント間で情報のやり取りを暗号化するためのプロトコルは「HTTPS」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "情報システムの開発手法で、繰り返し開発を行いながら、少しずつシステムを成熟させていく方法を何というか？",
//            choices: [
//                "ウォーターフォールモデル",
//                "スパイラルモデル",
//                "V字モデル",
//                "アジャイルモデル"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "繰り返し開発を行いながら、少しずつシステムを成熟させていく方法を「スパイラルモデル」といいます。"
//        ),
//
//        QuizQuestion(
//            question: "データベースの中で、データの重複を避けるために、データを複数のテーブルに分割することを何というか？",
//            choices: [
//                "正規化",
//                "最適化",
//                "集約",
//                "分散"
//            ],
//            correctAnswerIndex: 0,
//            explanation: "データの重複を避けるために、データを複数のテーブルに分割することを「正規化」といいます。"
//        ),
//            QuizQuestion(
//                question: "クラウドコンピューティングの3つの主なサービスモデルの1つでないものは？",
//                choices: ["IaaS", "PaaS", "CaaS", "SaaS"],
//                correctAnswerIndex: 2,
//                explanation: "クラウドコンピューティングの3つの主なサービスモデルはIaaS、PaaS、およびSaaSです。CaaSは含まれません。"
//            ),
//            QuizQuestion(
//                question: "システム開発のライフサイクルモデルの一つで、反復的に製品を改善していくモデルは何か？",
//                choices: ["ウォーターフォールモデル", "スパイラルモデル", "Vモデル", "アジャイルモデル"],
//                correctAnswerIndex: 1,
//                explanation: "スパイラルモデルは、反復的に製品を改善していく開発モデルです。"
//            ),
//            QuizQuestion(
//                question: "プロジェクト管理で使用される、タスクの進捗を視覚的に表すツールは？",
//                choices: ["Gantt Chart", "PERT Chart", "Flow Chart", "Network Diagram"],
//                correctAnswerIndex: 0,
//                explanation: "Gantt Chartは、タスクの進捗を視覚的に表すツールの一つです。"
//            ),
//            QuizQuestion(
//                question: "情報セキュリティのCIAトライアドの「I」は何を指すか？",
//                choices: ["Integrity", "Information", "Infrastructure", "Internet"],
//                correctAnswerIndex: 0,
//                explanation: "CIAトライアドの「I」はIntegrity（完全性）を指します。"
//            ),
//            QuizQuestion(
//                question: "ソフトウェアのバージョン管理システムの一つは？",
//                choices: ["Git", "Bit", "Kit", "Sit"],
//                correctAnswerIndex: 0,
//                explanation: "Gitは、ソフトウェアのバージョン管理システムの一つです。"
//            ),
//            QuizQuestion(
//                question: "インターネットの通信プロトコルは？",
//                choices: ["HTTP", "FTP", "TCP/IP", "All of the above"],
//                correctAnswerIndex: 3,
//                explanation: "HTTP, FTP, TCP/IP など、すべてがインターネットの通信プロトコルです。"
//            ),
//            QuizQuestion(
//                question: "オペレーティングシステムの一つは？",
//                choices: ["Windows", "Doors", "Gates", "Walls"],
//                correctAnswerIndex: 0,
//                explanation: "Windowsは一般的なオペレーティングシステムの一つです。"
//            ),
//            QuizQuestion(
//                question: "インターネットでの安全な通信を確保するプロトコルは？",
//                choices: ["HTTP", "HTTPS", "HTTPT", "HTTPX"],
//                correctAnswerIndex: 1,
//                explanation: "HTTPSは、安全な通信を確保するためのプロトコルです。"
//            ),
//            QuizQuestion(
//                question: "データベース管理システム(DBMS)の一つは？",
//                choices: ["MySQL", "MySquare", "MyCircle", "MyTriangle"],
//                correctAnswerIndex: 0,
//                explanation: "MySQLは、リレーショナルデータベース管理システムの一つです。"
//            ),
//            QuizQuestion(
//                question: "オブジェクト指向プログラミングの4つの主な特性の一つでないものは？",
//                choices: ["継承", "カプセル化", "多態性", "分割"],
//                correctAnswerIndex: 3,
//                explanation: "オブジェクト指向プログラミングの主な特性には、継承、カプセル化、および多態性が含まれますが、分割は含まれません。"
//            ),
//            QuizQuestion(
//                question: "機械学習で用いられることが多いプログラミング言語の一つは？",
//                choices: ["Python", "Cobra", "Viper", "Mamba"],
//                correctAnswerIndex: 0,
//                explanation: "Pythonは、広く使用されているプログラミング言語の一つです。"
//            ),
//            QuizQuestion(
//                question: "ソフトウェアテストの種類の一つは？",
//                choices: ["ユニットテスト", "グループテスト", "ブロックテスト", "セグメントテスト"],
//                correctAnswerIndex: 0,
//                explanation: "ユニットテストは、ソフトウェアの個々の部分をテストするプロセスです。"
//            ),
//            QuizQuestion(
//                question: "ソフトウェア開発手法の一つは？",
//                choices: ["Scrum", "Jog", "Run", "Walk"],
//                correctAnswerIndex: 0,
//                explanation: "Scrumは、アジャイル開発の一形態で、イテラティブかつインクリメンタルな開発手法です。"
//            ),
//            QuizQuestion(
//                question: "ウェブ開発で使用されるマークアップ言語は？",
//                choices: ["HTML", "HTXL", "HTMLL", "HTMML"],
//                correctAnswerIndex: 0,
//                explanation: "HTMLは、ウェブページを作成するための標準的なマークアップ言語です。"
//            ),
//            QuizQuestion(
//                question: "インターネットのドメイン名の一部として使用されるものは？",
//                choices: [".com", ".net", ".org", "All of the above"],
//                correctAnswerIndex: 3,
//                explanation: ".com, .net, .org は、インターネットのドメイン名の一部として使用されるトップレベルドメインです。"
//            ),
//            QuizQuestion(
//                question: "ネットワークのトポロジの一つは？",
//                choices: ["スター", "ツリー", "メッシュ", "All of the above"],
//                correctAnswerIndex: 3,
//                explanation: "スター、ツリー、メッシュは、ネットワークのトポロジの種類です。"
//            ),
//            QuizQuestion(
//                question: "ソフトウェアライセンスの一つは？",
//                choices: ["GPL", "APL", "BPL", "CPL"],
//                correctAnswerIndex: 0,
//                explanation: "GPLは、ソフトウェアを自由に使用、修正、および配布することを許可するライセンスです。"
//            ),
//            QuizQuestion(
//                question: "ウェブブラウザの一つは？",
//                choices: ["Chrome", "Silver", "Gold", "Bronze"],
//                correctAnswerIndex: 0,
//                explanation: "Chromeは、Googleによって開発されたウェブブラウザです。"
//            ),
//            QuizQuestion(
//                question: "ウェブ開発で使用されるスクリプト言語の一つは？",
//                choices: ["JavaScript", "JavaNote", "JavaBook", "JavaPage"],
//                correctAnswerIndex: 0,
//                explanation: "JavaScriptは、ウェブページに対してインタラクティブな機能を追加するために使用されるプログラミング言語です。"
//            ),
//            QuizQuestion(
//                question: "コンピュータネットワークの標準プロトコルの集合は何と呼ばれるか？",
//                choices: ["Internet Protocol Suite", "Internet Protocol Set", "Internet Protocol Group", "Internet Protocol Bunch"],
//                correctAnswerIndex: 0,
//                explanation: "Internet Protocol Suiteは、インターネットプロトコルの集合を指します。"
//            )
//    ]

    @State private var shuffledQuizList: [QuizQuestion]
    private var authManager = AuthManager()
    private var audioManager = AudioManager.shared

    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _shuffledQuizList = State(initialValue: quizBeginnerList.shuffled())
    }
    @StateObject var sharedInterstitial = Interstitial()
    var body: some View {
        QuizView(quizzes: shuffledQuizList, quizLevel: .beginner, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizList_Previews: PreviewProvider {
    static var previews: some View {
        QuizBeginnerList(isPresenting: .constant(false))
    }
}
