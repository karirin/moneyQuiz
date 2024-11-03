//
//  QuizToeicTangoIntermediateList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizToeicTangoIntermediateList: View {
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
            question: "遭遇",
            choices: [
                "そうぐう",
                "そうけん",
                "そうきゅう",
                "そうぐ"
            ],
            correctAnswerIndex: 0,
            explanation: "「遭遇」は「そうぐう」と読みます。偶然に、思いがけずに出会うことを指します。"
        ),
        QuizQuestion(
            question: "独裁",
            choices: [
                "どっせい",
                "どくさい",
                "どくせい",
                "どっさい"
            ],
            correctAnswerIndex: 1,
            explanation: "「独裁」は「どくさい」と読みます。一人が全ての権力を握り、他の意見を許さない政治形態を指します。"
        ),
        QuizQuestion(
            question: "免許",
            choices: [
                "めんしょ",
                "めんきょ",
                "めんか",
                "めんご"
            ],
            correctAnswerIndex: 1,
            explanation: "「免許」は「めんきょ」と読みます。特定の資格や許可を公的機関から与えられることを指します。"
        ),
        QuizQuestion(
            question: "診断",
            choices: [
                "しんだん",
                "しんたん",
                "じんだん",
                "しんどん"
            ],
            correctAnswerIndex: 0,
            explanation: "「診断」は「しんだん」と読みます。医者が病気の状態を調べ、その結果を判定することを指します。"
        ),
        QuizQuestion(
            question: "経過",
            choices: [
                "けいが",
                "けいこ",
                "けいか",
                "けいしゃ"
            ],
            correctAnswerIndex: 2,
            explanation: "「経過」は「けいか」と読みます。時が流れることや、事柄が進行する過程を指します。"
        ),
        QuizQuestion(
            question: "精巧",
            choices: [
                "せいか",
                "せいこう",
                "しょうこう",
                "せいこ"
            ],
            correctAnswerIndex: 1,
            explanation: "「精巧」は「せいこう」と読みます。細部にわたって非常によく作られていることを表します。"
        ),
        QuizQuestion(
            question: "博覧",
            choices: [
                "はくらん",
                "はくらく",
                "ばくらん",
                "はくりょう"
            ],
            correctAnswerIndex: 0,
            explanation: "「博覧」は「はくらん」と読みます。広く多くの書物を読むこと。また、広く事物を見聞きすることを指します。"
        ),
        QuizQuestion(
            question: "批評",
            choices: [
                "ひひょう",
                "ひぴょう",
                "ひりょう",
                "ひひん"
            ],
            correctAnswerIndex: 1,
            explanation: "「批評」は「ひぴょう」と読みます。物事の良し悪しを判断し、意見や評価を述べることです。"
        ),
        QuizQuestion(
            question: "譲歩",
            choices: [
                "しょうほ",
                "じょうほ",
                "じょうぼ",
                "じょうろ"
            ],
            correctAnswerIndex: 2,
            explanation: "「譲歩」は「じょうぼ」と読みます。自分の主張や要求を少し引き下げて、相手に歩み寄ること。"
        ),
        QuizQuestion(
            question: "頑固",
            choices: [
                "がんこ",
                "がんご",
                "げんこ",
                "げんご"
            ],
            correctAnswerIndex: 0,
            explanation: "「頑固」は「がんこ」と読みます。自分の意見や態度を変えようとしないこと。意志が非常に固いことを指します。"
        ),
        QuizQuestion(
            question: "援助",
            choices: [
                "えんじょ",
                "えんそ",
                "えんず",
                "えんしゅ"
            ],
            correctAnswerIndex: 0,
            explanation: "「援助」は「えんじょ」と読みます。困っている人や団体などに対して、助けや支援を行うこと。"
        ),
        QuizQuestion(
            question: "孤独",
            choices: [
                "こどく",
                "ことく",
                "ごどく",
                "こどこ"
            ],
            correctAnswerIndex: 0,
            explanation: "「孤独」は「こどく」と読みます。他の人と交流がなく、一人ぼっちの状態を指します。"
        ),
        QuizQuestion(
            question: "誤解",
            choices: [
                "ごかい",
                "ごけい",
                "ごか",
                "ごき"
            ],
            correctAnswerIndex: 0,
            explanation: "「誤解」は「ごかい」と読みます。事実と異なる解釈をしてしまうこと。"
        ),
        QuizQuestion(
            question: "結論",
            choices: [
                "けっろん",
                "けつろん",
                "けつらん",
                "けっこん"
            ],
            correctAnswerIndex: 1,
            explanation: "「結論」は「けつろん」と読みます。議論や考察の最後に出される結果や答え。"
        ),
        QuizQuestion(
            question: "恩恵",
            choices: [
                "おんけい",
                "おんえ",
                "おんかい",
                "おんえい"
            ],
            correctAnswerIndex: 3,
            explanation: "「恩恵」は「おんえい」と読みます。他人の親切や利益によって受ける良い影響や助け。"
        ),
        QuizQuestion(
            question: "革新",
            choices: [
                "かくしん",
                "かっしん",
                "がくしん",
                "かくし"
            ],
            correctAnswerIndex: 0,
            explanation: "「革新」は「かくしん」と読みます。新しい方法や考えを取り入れ、改革を進めること。"
        ),
        QuizQuestion(
            question: "催促",
            choices: [
                "さいそく",
                "さいこく",
                "さいしょく",
                "さいそう"
            ],
            correctAnswerIndex: 0,
            explanation: "「催促」は「さいそく」と読みます。相手に早く何かをするように促すこと。"
        ),
        QuizQuestion(
            question: "雑誌",
            choices: [
                "ざっし",
                "ざっしき",
                "ざっしょ",
                "さっし"
            ],
            correctAnswerIndex: 0,
            explanation: "「雑誌」は「ざっし」と読みます。さまざまな情報や記事を定期的に発行する出版物。"
        ),
        QuizQuestion(
            question: "承諾",
            choices: [
                "しょうだく",
                "しょうどく",
                "しょうのう",
                "しょうなく"
            ],
            correctAnswerIndex: 0,
            explanation: "「承諾」は「しょうだく」と読みます。他人の提案や申し出に対して、その内容を受け入れること。"
        ),
        QuizQuestion(
            question: "破壊",
            choices: [
                "はかい",
                "はけい",
                "はさい",
                "はがい"
            ],
            correctAnswerIndex: 0,
            explanation: "「破壊」は「はかい」と読みます。物事を壊すこと。特に構造を持つものを意図的に壊す行為。"
        ),
        QuizQuestion(
            question: "発揮",
            choices: [
                "はつき",
                "ほっき",
                "はっき",
                "はっし"
            ],
            correctAnswerIndex: 2,
            explanation: "「発揮」は「はっき」と読みます。潜在的な能力や力を外に出すこと。"
        ),
        QuizQuestion(
            question: "壮大",
            choices: [
                "そうだい",
                "そうたい",
                "ぞうだい",
                "そうてい"
            ],
            correctAnswerIndex: 0,
            explanation: "「壮大」は「そうだい」と読みます。規模が大きく、見事であるさま。"
        ),
        QuizQuestion(
            question: "貢献",
            choices: [
                "こうけん",
                "こうこん",
                "ごうけん",
                "こうげん"
            ],
            correctAnswerIndex: 0,
            explanation: "「貢献」は「こうけん」と読みます。社会や集団のために力を尽くすこと。"
        ),
        QuizQuestion(
            question: "尊敬",
            choices: [
                "そんけい",
                "そんけ",
                "そんきょう",
                "そんれい"
            ],
            correctAnswerIndex: 0,
            explanation: "「尊敬」は「そんけい」と読みます。人柄や行為を高く評価し、敬うこと。"
        ),
        QuizQuestion(
            question: "模倣",
            choices: [
                "もぼう",
                "もほう",
                "もふう",
                "もしょう"
            ],
            correctAnswerIndex: 1,
            explanation: "「模倣」は「もほう」と読みます。他人の行動や作品などを真似ること。"
        ),
        QuizQuestion(
            question: "解釈",
            choices: [
                "かいしょく",
                "げしゃく",
                "かいしゃく",
                "かいせつ"
            ],
            correctAnswerIndex: 2,
            explanation: "「解釈」は「かいしゃく」と読みます。文言や事象の意味を説明すること。"
        ),QuizQuestion(
            question: "購入",
            choices: [
                "こういん",
                "こうにゅう",
                "こううん",
                "こうじゅう"
            ],
            correctAnswerIndex: 1,
            explanation: "「購入」は「こうにゅう」と読みます。お金を支払って物を買い取ること。"
        ),
        QuizQuestion(
            question: "適応",
            choices: [
                "てっおう",
                "てきおう",
                "てきょう",
                "ていおう"
            ],
            correctAnswerIndex: 1,
            explanation: "「適応」は「てきおう」と読みます。環境や条件に合わせてうまく対処すること。"
        ),
        QuizQuestion(
            question: "疑問",
            choices: [
                "ぎもん",
                "きもん",
                "ぎもう",
                "ぎぼん"
            ],
            correctAnswerIndex: 0,
            explanation: "「疑問」は「ぎもん」と読みます。ある事柄に対して確信が持てず、はっきりしないと感じること。"
        ),
        QuizQuestion(
            question: "慰謝",
            choices: [
                "いしゃ",
                "いせい",
                "いぜん",
                "いしゃ"
            ],
            correctAnswerIndex: 0,
            explanation: "「慰謝」は「いしゃ」と読みます。精神的苦痛を与えたことへの償いや、心を安らげるための行為。"
        ),
        QuizQuestion(
            question: "確認",
            choices: [
                "かくにん",
                "かくしん",
                "けんしん",
                "けっにん"
            ],
            correctAnswerIndex: 0,
            explanation: "「確認」は「かくにん」と読みます。事実や内容が正しいかどうかを再度チェックすること。"
        ),
        QuizQuestion(
            question: "範囲",
            choices: [
                "はんい",
                "はんき",
                "はんぎ",
                "ふんい"
            ],
            correctAnswerIndex: 0,
            explanation: "「範囲」は「はんい」と読みます。ある事柄が及ぶ限界や区域。"
        ),
        QuizQuestion(
            question: "追求",
            choices: [
                "ついきゅう",
                "ついぐう",
                "ついしゅう",
                "ついじゅう"
            ],
            correctAnswerIndex: 0,
            explanation: "「追求」は「ついきゅう」と読みます。積極的に求め続けること。"
        ),
        QuizQuestion(
            question: "散歩",
            choices: [
                "さんぼ",
                "さんぽ",
                "さんろ",
                "さんお"
            ],
            correctAnswerIndex: 1,
            explanation: "「散歩」は「さんぽ」と読みます。気晴らしや運動のために、ゆっくり歩くこと。"
        ),
        QuizQuestion(
            question: "協議",
            choices: [
                "きょうぎ",
                "きょうり",
                "ぎょうぎ",
                "きょうい"
            ],
            correctAnswerIndex: 0,
            explanation: "「協議」は「きょうぎ」と読みます。何かを決めるために、複数の人が話し合うこと。"
        ),
        QuizQuestion(
            question: "提示",
            choices: [
                "ていじ",
                "てきじ",
                "ちじ",
                "ていし"
            ],
            correctAnswerIndex: 0,
            explanation: "「提示」は「ていじ」と読みます。必要な情報や物を示し、相手に知らせること。"
        ),
        QuizQuestion(
            question: "惨事",
            choices: [
                "さんし",
                "さんじ",
                "ざんじ",
                "さんじ"
            ],
            correctAnswerIndex: 2,
            explanation: "「惨事」は「ざんじ」と読みます。非常に悲惨でつらい出来事。"
        ),
        QuizQuestion(
            question: "慎重",
            choices: [
                "しんちょう",
                "しんじゅう",
                "しんてい",
                "しんじょう"
            ],
            correctAnswerIndex: 0,
            explanation: "「慎重」は「しんちょう」と読みます。物事を行う際に、非常に注意深く行うこと。"
        ),
        QuizQuestion(
            question: "概要",
            choices: [
                "がいよう",
                "がいりょう",
                "かいよう",
                "がいしょう"
            ],
            correctAnswerIndex: 0,
            explanation: "「概要」は「がいよう」と読みます。事物の大まかな内容や状況の説明。"
        ),
        QuizQuestion(
            question: "絶望",
            choices: [
                "ぜっぼう",
                "ぜつぼう",
                "ぜっぽう",
                "ぜつぽう"
            ],
            correctAnswerIndex: 1,
            explanation: "「絶望」は「ぜつぼう」と読みます。何も期待できないと感じる心の状態。"
        ),
        QuizQuestion(
            question: "調整",
            choices: [
                "ちょうせい",
                "ちょうてい",
                "ていせい",
                "じょうせい"
            ],
            correctAnswerIndex: 0,
            explanation: "「調整」は「ちょうせい」と読みます。物事を適切な状態や関係にするために、微調整を加えること。"
        ),
        QuizQuestion(
            question: "創造",
            choices: [
                "そうぞう",
                "そうさく",
                "そうしょう",
                "そうだい"
            ],
            correctAnswerIndex: 0,
            explanation: "「創造」は「そうぞう」と読みます。新しいものやアイデアを生み出すこと。"
        ),
        QuizQuestion(
            question: "継続",
            choices: [
                "けいぞく",
                "けいつづ",
                "けいしょく",
                "けいしゅう"
            ],
            correctAnswerIndex: 1,
            explanation: "「継続」は「けいつづ」と読みます。何かを途切れることなく続けること。"
        ),
        QuizQuestion(
            question: "配慮",
            choices: [
                "はいりょ",
                "はいしょ",
                "はいよ",
                "はいりょう"
            ],
            correctAnswerIndex: 0,
            explanation: "「配慮」は「はいりょ」と読みます。他人の立場や状況を考え、それに対して気を使うこと。"
        ),
        QuizQuestion(
            question: "暴露",
            choices: [
                "ぼうろ",
                "ばくろ",
                "ぼうかい",
                "ばくれつ"
            ],
            correctAnswerIndex: 0,
            explanation: "「暴露」は「ぼうろ」と読みます。隠された事実や問題点を公にすること。"
        ),
        QuizQuestion(
            question: "評判",
            choices: [
                "ひょうばん",
                "ひょうぱん",
                "ひょうたん",
                "ひょうらん"
            ],
            correctAnswerIndex: 0,
            explanation: "「評判」は「ひょうばん」と読みます。人々が良いと評価している意見や、一般的な評価。"
        ),
        QuizQuestion(
            question: "侵害",
            choices: [
                "しんかい",
                "しんがい",
                "しんはい",
                "しんさい"
            ],
            correctAnswerIndex: 1,
            explanation: "「侵害」は「しんがい」と読みます。他人の権利や領域に不当に入り込み、損害を与えること。"
        ),
        QuizQuestion(
            question: "強調",
            choices: [
                "きょうじょう",
                "きょうちょう",
                "きょうしょう",
                "ごうちょう"
            ],
            correctAnswerIndex: 1,
            explanation: "「強調」は「きょうちょう」と読みます。ある事柄の重要性や特徴を特に強く表現すること。"
        ),
        QuizQuestion(
            question: "推進",
            choices: [
                "すいしん",
                "すいじん",
                "すいせん",
                "すいぜん"
            ],
            correctAnswerIndex: 0,
            explanation: "「推進」は「すいしん」と読みます。計画や意見などを積極的に前に進めること。"
        ),
        QuizQuestion(
            question: "賛成",
            choices: [
                "さんせい",
                "さんじょう",
                "さんしょう",
                "さんてい"
            ],
            correctAnswerIndex: 0,
            explanation: "「賛成」は「さんせい」と読みます。提案や意見などに対して、その内容に同意すること。"
        ),
        QuizQuestion(
            question: "減少",
            choices: [
                "げんじょう",
                "げんしょう",
                "げんそう",
                "げんせい"
            ],
            correctAnswerIndex: 1,
            explanation: "「減少」は「げんしょう」と読みます。数や量が前よりも少なくなること。"
        ),
        QuizQuestion(
            question: "認識",
            choices: [
                "にんしき",
                "にんせき",
                "にんち",
                "にんき"
            ],
            correctAnswerIndex: 0,
            explanation: "「認識」は「にんしき」と読みます。物事の意味や価値を正しく理解すること。"
        ),
        QuizQuestion(
            question: "意図",
            choices: [
                "いと",
                "いし",
                "いど",
                "いず"
            ],
            correctAnswerIndex: 2,
            explanation: "「意図」は「いど」と読みます。ある目的を持って行動すること。"
        ),
        QuizQuestion(
            question: "納得",
            choices: [
                "のうとく",
                "のうどく",
                "のうりょく",
                "のうてき"
            ],
            correctAnswerIndex: 1,
            explanation: "「納得」は「のうどく」と読みます。理由や説明を聞いて、それが理解できること。"
        ),
        QuizQuestion(
            question: "表現",
            choices: [
                "ひょうげん",
                "ひょうせん",
                "ひょういん",
                "ひょうけん"
            ],
            correctAnswerIndex: 0,
            explanation: "「表現」は「ひょうげん」と読みます。感じたことや考えたことを言葉や芸術などで外に出すこと。"
        ),
        QuizQuestion(
            question: "概念",
            choices: [
                "がいねん",
                "がいけん",
                "がいれん",
                "がいしん"
            ],
            correctAnswerIndex: 0,
            explanation: "「概念」は「がいねん」と読みます。物事の本質的な特徴を抽象的にまとめた思考の形。"
        ),
        QuizQuestion(
            question: "緩和",
            choices: [
                "かんわ",
                "かんお",
                "かんほ",
                "かんぽ"
            ],
            correctAnswerIndex: 0,
            explanation: "「緩和」は「かんわ」と読みます。緊張や厳しさを和らげること。"
        ),
        QuizQuestion(
            question: "割引",
            choices: [
                "かっきん",
                "わりびき",
                "わりきん",
                "かりきん"
            ],
            correctAnswerIndex: 1,
            explanation: "「割引」は「わりびき」と読みます。販売価格を一定の割合で下げること。"
        ),
        QuizQuestion(
            question: "健康",
            choices: [
                "けんこう",
                "けんほう",
                "けんぼう",
                "けんぽう"
            ],
            correctAnswerIndex: 0,
            explanation: "「健康」は「けんこう」と読みます。病気がなく、体の機能が正常に働いている状態。"
        ),
        QuizQuestion(
            question: "誘導",
            choices: [
                "ゆうどう",
                "ゆうほう",
                "ゆうこう",
                "ゆうろう"
            ],
            correctAnswerIndex: 0,
            explanation: "「誘導」は「ゆうどう」と読みます。ある方向や行動に導くこと。"
        ),
        QuizQuestion(
            question: "承認",
            choices: [
                "しょうにん",
                "しょうきん",
                "じょうにん",
                "しょうりん"
            ],
            correctAnswerIndex: 0,
            explanation: "「承認」は「しょうにん」と読みます。正式に認めること。"
        ),
        QuizQuestion(
            question: "構造",
            choices: [
                "こうそう",
                "こうぞう",
                "こうじょう",
                "こうごう"
            ],
            correctAnswerIndex: 1,
            explanation: "「構造」は「こうぞう」と読みます。物事を構成する部分の配置や関係の仕組み。"
        ),
        QuizQuestion(
            question: "規模",
            choices: [
                "きも",
                "ぎも",
                "きはく",
                "きぼ"
            ],
            correctAnswerIndex: 0,
            explanation: "「規模」は「きも」と読みます。事業や機関などの大きさや範囲。"
        ),
        QuizQuestion(
            question: "現象",
            choices: [
                "げんしょう",
                "げんそう",
                "けんしょう",
                "げんじょう"
            ],
            correctAnswerIndex: 0,
            explanation: "「現象」は「げんしょう」と読みます。自然界や社会で起こる事象。"
        ),
        QuizQuestion(
            question: "誤解",
            choices: [
                "ごけい",
                "ごかい",
                "ごせい",
                "ごさい"
            ],
            correctAnswerIndex: 1,
            explanation: "「誤解」は「ごかい」と読みます。事実と異なる理解や解釈をすること。"
        ),
        QuizQuestion(
            question: "措置",
            choices: [
                "そち",
                "しょち",
                "そし",
                "そじ"
            ],
            correctAnswerIndex: 0,
            explanation: "「措置」は「そち」と読みます。問題や事態に対処するための具体的な手段や行動。"
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicTangoIntermediate, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicTangoIntermediateList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicTangoIntermediateList(isPresenting: .constant(false))
    }
}




