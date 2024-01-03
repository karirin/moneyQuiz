//
//  QuizIntermediateList.swift
//  it
//
//  Created by hashimo ryoya on 2023/09/19.
//

import SwiftUI

struct QuizIntermediateList: View {
    @Binding var isPresenting: Bool
    let QuizIntermediateList: [QuizQuestion] = [
        QuizQuestion(
        question: "株式投資において、株価が下落した際に追加資金を投入して平均取得単価を下げる戦略は何と呼ばれますか？",
        choices: [
        "ドルコスト平均法",
        "マーチンゲール戦略",
        "ショートセリング",
        "バリュー投資"
        ],
        correctAnswerIndex: 0,
        explanation: "ドルコスト平均法は、一定の間隔で一定額の投資を行い、市場の変動に関わらず定期的に資産を購入する戦略です。これにより、長期間で見たときの平均取得単価を下げることができます。"
        ),
        QuizQuestion(
        question: "株式市場で「ブル市場」とはどのような状況を指しますか？",
        choices: [
        "株価が一定期間にわたって上昇している市場",
        "株価が一定期間にわたって下落している市場",
        "株式市場が非常に不安定な状況",
        "株式取引が活発でない市場"
        ],
        correctAnswerIndex: 0,
        explanation: "「ブル市場」は、株価が長期間にわたって上昇している状態を指します。これは一般的に経済の好調さや投資家の楽観的な見通しを反映しています。"
        ),
        QuizQuestion(
        question: "投資における「リスク分散」とは何を意味しますか？",
        choices: [
        "単一の投資に集中すること",
        "様々な資産クラスに投資すること",
        "高リスクの投資に集中すること",
        "短期間での売買を繰り返すこと"
        ],
        correctAnswerIndex: 1,
        explanation: "リスク分散は、投資リスクを管理するために様々な資産クラス（株式、債券、不動産など）に分散して投資する戦略です。これにより、特定の資産が不振の場合でも全体のパフォーマンスに大きな影響を与えにくくなります。"
        ),
        QuizQuestion(
        question: "投資において、市場の全体的な動きを追従する投資手法は何と呼ばれますか？",
        choices: [
        "アクティブ投資",
        "パッシブ投資",
        "ヘッジファンド投資",
        "ショート投資"
        ],
        correctAnswerIndex: 1,
        explanation: "パッシブ投資は、市場の指数やベンチマークに追従することを目的とした投資手法です。インデックスファンドやETF（上場投資信託）の運用が代表的な例です。"
        ),
        QuizQuestion(
        question: "株式投資において、配当を再投資することによって得られる効果は何と呼ばれますか？",
        choices: [
        "コンパウンド効果",
        "レバレッジ効果",
        "マーケットタイミング効果",
        "アービトラージ効果"
        ],
        correctAnswerIndex: 0,
        explanation: "コンパウンド効果（複利効果）は、得られた配当を再投資し、その投資からさらに利益を得ることで資産が指数関数的に成長する現象を指します。"
        ),
        QuizQuestion(
        question: "株式投資において、企業の株価が本来の価値よりも著しく低い状態を指す言葉は何ですか？",
        choices: [
        "オーバーバリュー",
        "アンダーバリュー",
        "マーケットマッチ",
        "ブレイクイーブン"
        ],
        correctAnswerIndex: 1,
        explanation: "アンダーバリューは、株式がその本来の価値（内在価値）よりも市場で低く評価されている状態を指します。バリュー投資家はこのような株式を探して投資することが多いです。"
        ),
        QuizQuestion(
        question: "為替レートの変動リスクを回避するために行われる金融取引は何と呼ばれますか？",
        choices: [
        "ヘッジ取引",
        "マージン取引",
        "デリバティブ取引",
        "スポット取引"
        ],
        correctAnswerIndex: 0,
        explanation: "ヘッジ取引は、為替レートの変動やその他の市場リスクから投資を守るために行われる取引です。例えば、将来の為替変動に備えて先物契約を利用するなどがあります。"
        ),
        QuizQuestion(
        question: "投資における「ポートフォリオ」とは何を指しますか？",
        choices: [
        "特定の株式だけに集中する投資戦略",
        "投資家が保有する全ての投資資産の組み合わせ",
        "高リスク高リターンの投資商品",
        "投資のための資金調達計画"
        ],
        correctAnswerIndex: 1,
        explanation: "ポートフォリオは、投資家が保有する株式、債券、不動産、現金など、様々な資産クラスの全体的な組み合わせを指します。リスク分散とリターンの最適化を目的として構築されます。"
        ),
        QuizQuestion(
        question: "株式市場において、企業の株価がその企業の実際の価値より高く評価されている状態を何と呼びますか？",
        choices: [
        "アンダーバリュー",
        "オーバーバリュー",
        "マーケットキャップ",
        "イクイティ"
        ],
        correctAnswerIndex: 1,
        explanation: "オーバーバリューは、株価が企業の実際の価値（内在価値）よりも高く市場で評価されている状態を指します。これは一般的に市場の楽観主義や過剰な投機によって引き起こされることがあります。"
        ),
        QuizQuestion(
        question: "投資において、複数の異なる資産クラスに分散投資する目的は何ですか？",
        choices: [
        "最大のリターンを得るため",
        "リスクを最小限に抑えるため",
        "投資の流動性を高めるため",
        "税金を節約するため"
        ],
        correctAnswerIndex: 1,
        explanation: "複数の異なる資産クラスに分散投資する主な目的は、リスクを分散して全体的な投資リスクを最小限に抑えることです。これにより、市場の変動による影響を軽減することができます。"
        ),
        QuizQuestion(
        question: "投資における「マーケットタイミング」とは何を指しますか？",
        choices: [
        "長期的な投資戦略",
        "株価が最低になるタイミングでの投資",
        "市場の変動を予測して投資すること",
        "定期的な投資計画"
        ],
        correctAnswerIndex: 2,
        explanation: "マーケットタイミングは、市場の変動を予測し、最適なタイミングで投資を行う戦略を指します。これは市場の将来を正確に予測することが困難であるため、リスクが伴います。"
        ),
        QuizQuestion(
        question: "投資における「ベータ係数」とは何を測定する指標ですか？",
        choices: [
        "投資の収益率",
        "投資のリスク",
        "株式の市場全体に対する感応度",
        "株式の流動性"
        ],
        correctAnswerIndex: 2,
        explanation: "ベータ係数は、個別の株式やポートフォリオが市場全体の動きにどれだけ敏感に反応するかを測定する指標です。ベータが1より大きい場合、市場の動きに対してより敏感であることを示し、1未満の場合はより鈍感であることを示します。"
        ),
        QuizQuestion(
        question: "投資において、長期間にわたり資産価値が上昇することを期待して行う投資戦略は何と呼ばれますか？",
        choices: [
        "デイトレーディング",
        "スイングトレーディング",
        "バリュー投資",
        "グロース投資"
        ],
        correctAnswerIndex: 3,
        explanation: "グロース投資は、将来的な成長が見込まれる資産や企業に投資し、長期間にわたる資産価値の上昇を目指す戦略です。この戦略は成長可能性が高いが配当が少ない企業に焦点を当てます。"
        ),
        QuizQuestion(
        question: "株式市場において、一時的に株価が下がる小さな調整を何と呼びますか？",
        choices: [
        "バブル",
        "クラッシュ",
        "コレクション",
        "プルバック"
        ],
        correctAnswerIndex: 3,
        explanation: "プルバックは、株式市場において株価が一時的に下がる小さな調整を指します。これは一般的に健全な市場の動きとみなされ、株価の過熱を防ぐ役割を果たします。"
        ),
        QuizQuestion(
        question: "投資において、国や地域、業種など異なるカテゴリーの資産に分散投資することを何と呼びますか？",
        choices: [
        "アセットアロケーション",
        "ポートフォリオバランシング",
        "ダイバーシフィケーション",
        "リバランシング"
        ],
        correctAnswerIndex: 2,
        explanation: "ダイバーシフィケーションは、リスクを分散し、全体的な投資リスクを軽減するために、さまざまなカテゴリーの資産に投資することです。これにより、市場の特定の部分が下落しても全体の影響を抑えることができます。"
        ),
        QuizQuestion(
        question: "株式市場において、企業の株価が過去最高値を更新することを何と呼びますか？",
        choices: [
        "ブレイクアウト",
        "ピークアウト",
        "マーケットトップ",
        "レコードハイ"
        ],
        correctAnswerIndex: 0,
        explanation: "ブレイクアウトは、株式やその他の金融商品が既存の価格範囲や抵抗レベルを超えて新たな高値を記録する現象を指します。これはしばしば市場における新たな動向の開始を示すサインと見なされます。"
        ),
        QuizQuestion(
        question: "投資で利用される「ROE」とは何の略称ですか？",
        choices: [
        "Return On Equity",
        "Rate Of Exchange",
        "Ratio Of Earnings",
        "Revenue Over Expense"
        ],
        correctAnswerIndex: 0,
        explanation: "ROE（Return On Equity）は、企業の自己資本利益率を指し、企業が株主の資本をどれだけ効率的に利益に変えることができているかを示す指標です。ROEは企業の収益性と効率性を評価するのに重要です。"
        ),
        QuizQuestion(
        question: "株式投資において、特定の株価指数に連動するパフォーマンスを目指すファンドは何と呼ばれますか？",
        choices: [
        "ヘッジファンド",
        "マネーマーケットファンド",
        "インデックスファンド",
        "ミューチュアルファンド"
        ],
        correctAnswerIndex: 2,
        explanation: "インデックスファンドは、特定の株価指数（例えばS&P 500や日経225など）に連動するパフォーマンスを目指す投資ファンドです。これらのファンドは指数に含まれる株式を模倣することで、指数と同様のリターンを提供しようとします。"
        ),
        QuizQuestion(
        question: "投資において、一定期間内の資産価値の変動の激しさを測る指標は何と呼ばれますか？",
        choices: [
        "リキッド",
        "レバレッジ",
        "ボラティリティ",
        "キャピタルゲイン"
        ],
        correctAnswerIndex: 2,
        explanation: "ボラティリティは、一定期間内の資産価値の変動の激しさや不安定さを測る指標です。高いボラティリティは大きな価格変動を意味し、一般に高リスクと関連しています。"
        ),
        QuizQuestion(
        question: "企業が株主に利益を分配する際に使用される金融用語は何ですか？",
        choices: [
        "キャピタルゲイン",
        "インカムゲイン",
        "配当",
        "利子"
        ],
        correctAnswerIndex: 2,
        explanation: "配当は、企業がその利益の一部を株主に分配することを指します。配当は通常、現金で支払われることが多く、株主にとっては投資からの収益源の一つとなります。"
        ),
        QuizQuestion(
        question: "投資において、特定の株式や債券などの個別の投資を分析するアプローチは何と呼ばれますか？",
        choices: [
        "マクロ経済分析",
        "ポートフォリオ分析",
        "ファンダメンタル分析",
        "テクニカル分析"
        ],
        correctAnswerIndex: 2,
        explanation: "ファンダメンタル分析は、企業の財務諸表、業界の条件、経済状況などを考慮し、個別の株式や債券の本質的価値を評価するアプローチです。投資判断の基礎として用いられます。"
        ),
        QuizQuestion(
        question: "投資家が株式を売却する際に遭遇する可能性のある、買い手が見つからずに売却できないリスクは何と呼ばれますか？",
        choices: [
        "マーケットリスク",
        "流動性リスク",
        "クレジットリスク",
        "運用リスク"
        ],
        correctAnswerIndex: 1,
        explanation: "流動性リスクは、投資家が所持する資産を迅速に現金化できないリスクです。特に取引量が少ない株式や市場で、このリスクが顕著になることがあります。"
        ),
        QuizQuestion(
        question: "長期にわたるインフレやデフレの影響を考慮して投資のリターンを調整する指標は何ですか？",
        choices: [
        "名目リターン",
        "実質リターン",
        "年率リターン",
        "累積リターン"
        ],
        correctAnswerIndex: 1,
        explanation: "実質リターンは、インフレーションやデフレーションの影響を除外して計算された投資のリターンです。これにより、時間の経過に伴う貨幣価値の変動を考慮したより正確なリターンを把握できます。"
        ),
        QuizQuestion(
        question: "株式市場で、株価が急激に下落し、大量の売り注文が発生する現象は何と呼ばれますか？",
        choices: [
        "バブルバースト",
        "マーケットクラッシュ",
        "プルバック",
        "コレクション"
        ],
        correctAnswerIndex: 1,
        explanation: "マーケットクラッシュは、株式市場で株価が急激に下落し、広範囲にわたる売り注文が発生する現象です。これはしばしば市場のパニックや極端な不確実性の時に起こります。"
        ),
        QuizQuestion(
        question: "投資において、複数の異なる国の株式市場に投資することを何と呼びますか？",
        choices: [
        "グローバル投資",
        "ダイバーシフィケーション",
        "インターナショナル投資",
        "クロスボーダー投資"
        ],
        correctAnswerIndex: 0,
        explanation: "グローバル投資は、世界中の様々な国の株式市場に投資することを指します。これにより、投資ポートフォリオの地理的な多様化が図られ、リスク分散が可能になります。"
        ),
        QuizQuestion(
        question: "投資において、短期的な市場の動きを無視し、長期的な成長を目指す投資戦略は何と呼ばれますか？",
        choices: [
        "デイトレーディング",
        "マーケットタイミング",
        "バイ・アンド・ホールド",
        "ヘッジファンド運用"
        ],
        correctAnswerIndex: 2,
        explanation: "バイ・アンド・ホールド戦略は、短期的な市場の変動を無視し、長期的な資産の成長を目指す投資アプローチです。この戦略は安定したリターンを求める投資家に適しています。"
        ),
        QuizQuestion(
        question: "投資において、株価が下落傾向にある市場を何と呼びますか？",
        choices: [
        "ブル市場",
        "ベア市場",
        "ステイブル市場",
        "バランス市場"
        ],
        correctAnswerIndex: 1,
        explanation: "ベア市場は、株価が一定期間にわたって下落傾向にある市場を指します。このような市場は、投資家の慎重な姿勢や経済の減速を反映していることが多いです。"
        ),
        QuizQuestion(
        question: "投資において、株式の配当利回りを計算するために使用される式は何ですか？",
        choices: [
        "年間配当額 ÷ 株価",
        "株価 ÷ 年間配当額",
        "年間配当額 ÷ 株式数",
        "株式数 ÷ 年間配当額"
        ],
        correctAnswerIndex: 0,
        explanation: "株式の配当利回りは、年間配当額を株価で割って計算します。この利回りは、投資した金額に対する配当の割合を示し、株式の魅力を評価するのに役立ちます。"
        ),
        QuizQuestion(
        question: "株式市場において、株式の一部を公開市場で販売することなく企業内部で所有することを指す用語は何ですか？",
        choices: [
        "パブリックホールディング",
        "プライベートエクイティ",
        "クローズドエンドファンド",
        "トレジャリーストック"
        ],
        correctAnswerIndex: 3,
        explanation: "トレジャリーストック（自己株式）は、企業が市場で取得し、自社内で保有する自己の株式を指します。これらの株式は一般的に投票権がなく、配当も受け取りません。"
        ),
        QuizQuestion(
        question: "株式投資において、市場価格が企業の内在価値よりも低い場合に購入する戦略を何と呼びますか？",
        choices: [
        "グロース投資",
        "ショートセリング",
        "デイトレーディング",
        "バリュー投資"
        ],
        correctAnswerIndex: 3,
        explanation: "バリュー投資は、株式がその内在価値に比べて市場で過小評価されていると考えられる場合にそれを購入する投資戦略です。この戦略は長期的な価値の増加に注目します。"
        ),
        QuizQuestion(
        question: "投資における「株価収益率（P/E比率）」とは、どのような情報を提供しますか？",
        choices: [
        "企業の負債レベル",
        "株価が企業利益の何倍であるか",
        "企業の配当利回り",
        "企業の資産価値"
        ],
        correctAnswerIndex: 1,
        explanation: "株価収益率（P/E比率）は、株価が企業の1株当たり利益（EPS）の何倍であるかを示します。これは投資家が株式の価値を評価する際によく使われる指標です。"
        ),
        QuizQuestion(
        question: "株式市場で「コリレーション」とは何を指しますか？",
        choices: [
        "二つの株式の価格が同じ方向に動く度合い",
        "株式と債券市場の関連性",
        "市場の全体的な動き",
        "経済指標と市場の関係"
        ],
        correctAnswerIndex: 0,
        explanation: "コリレーションは、二つの資産（例えば株式）の価格がどの程度同じ方向に動くかを示す尺度です。高いコリレーションは価格が同じ方向に動くことを意味し、低いコリレーションは価格の動きが独立していることを意味します。"
        ),
        QuizQuestion(
        question: "投資において、利益を上げるために他人の資金を使う戦略は何と呼ばれますか？",
        choices: [
        "レバレッジ",
        "ヘッジング",
        "ダイバーシフィケーション",
        "アロケーション"
        ],
        correctAnswerIndex: 0,
        explanation: "レバレッジは、借り入れた資金やその他の金融手段を使用して投資することです。これにより、自己資金以上の大きなポジションを取ることができますが、リスクも増大します。"
        ),
        QuizQuestion(
        question: "株式市場での「イールドカーブ」とは何を示しますか？",
        choices: [
        "特定の株式の収益率",
        "さまざまな満期にわたる債券の利回り",
        "投資ポートフォリオのリターン",
        "株価と利益の比率"
        ],
        correctAnswerIndex: 1,
        explanation: "イールドカーブは、さまざまな満期を持つ債券（通常は国債）の利回りをグラフにしたものです。このカーブは経済の健康状態や将来の金利動向に関する重要な手がかりを提供します。"
        ),
        QuizQuestion(
        question: "株式市場で使用される「アルファ」とは、どのような概念を表しますか？",
        choices: [
        "投資のリスク",
        "マーケットリターンと比較した超過リターン",
        "企業の総資産利益率",
        "株式の流動性"
        ],
        correctAnswerIndex: 1,
        explanation: "アルファは、投資ポートフォリオが市場平均やベンチマークと比較してどれだけの超過リターンを達成したかを示す指標です。正のアルファは市場平均を上回るパフォーマンスを、負のアルファは下回るパフォーマンスを意味します。"
        ),
        QuizQuestion(
        question: "株式投資において、企業の価値を市場価格で割った指標を何と呼びますか？",
        choices: [
        "株価収益率（P/E比率）",
        "企業価値倍率（EV/EBITDA）",
        "価格帳面価値比率（P/B比率）",
        "ディビデント・イールド"
        ],
        correctAnswerIndex: 2,
        explanation: "価格帳面価値比率（P/B比率）は、株価を企業の帳面価値（簿価）で割ったもので、企業の株式が過大評価されているか過小評価されているかを判断するのに役立ちます。"
        ),
        QuizQuestion(
        question: "金融市場において、価格変動が大きくリスクが高い資産を指す用語は何ですか？",
        choices: [
        "安全資産",
        "ハイリスク資産",
        "インカム資産",
        "リキッド資産"
        ],
        correctAnswerIndex: 1,
        explanation: "ハイリスク資産は、価格変動が大きく、投資に伴うリスクが高い資産を指します。これらの資産は高いリターンを提供する可能性がありますが、同時に大きな損失をもたらす可能性もあります。"
        ),
        QuizQuestion(
        question: "投資における「ベンチマーク」とは何を指しますか？",
        choices: [
        "最低限達成すべき投資リターン",
        "投資パフォーマンスの比較基準",
        "投資のリスク管理の基準",
        "投資の運用限度額"
        ],
        correctAnswerIndex: 1,
        explanation: "ベンチマークは、投資のパフォーマンスを評価するための比較基準となる指標や市場指数を指します。投資家はこのベンチマークを使用して、自身の投資戦略やポートフォリオのパフォーマンスを評価します。"
        ),
        QuizQuestion(
        question: "株式投資において、未公開企業の株式に投資することを何と呼びますか？",
        choices: [
        "パブリック投資",
        "プライベートエクイティ",
        "インダイレクト投資",
        "エンジェル投資"
        ],
        correctAnswerIndex: 1,
        explanation: "プライベートエクイティは、株式市場に上場されていない未公開企業の株式に投資することを指します。このタイプの投資は通常、大手投資ファンドや資産家によって行われます。"
        ),
        QuizQuestion(
        question: "投資の分野で「ETF」とは何の略称ですか？",
        choices: [
        "Economic Trade Fund",
        "Equity Transfer Fund",
        "Exchange-Traded Fund",
        "Essential Trading Facility"
        ],
        correctAnswerIndex: 2,
        explanation: "ETF（Exchange-Traded Fund）は、株式や債券などのポートフォリオを基にした投資ファンドで、株式市場で取引されます。ETFは市場の指数に連動するリターンを提供し、効率的な投資手段とされています。"
        ),
        QuizQuestion(
        question: "投資において、複数の異なる資産を組み合わせてリスクを管理する手法は何と呼ばれますか？",
        choices: [
        "アセットアロケーション",
        "リバランシング",
        "ヘッジファンド投資",
        "マーケットタイミング"
        ],
        correctAnswerIndex: 0,
        explanation: "アセットアロケーションは、株式、債券、現金などの異なる資産クラス間で資金を分配することにより、リスクを分散し、リターンを最適化する投資戦略です。"
        ),
        QuizQuestion(
        question: "株式市場において、株価が急落する短期間の混乱状態を何と呼びますか？",
        choices: [
        "バブル",
        "ダウンターン",
        "フラッシュクラッシュ",
        "コレクション"
        ],
        correctAnswerIndex: 2,
        explanation: "フラッシュクラッシュは、株式市場で株価が非常に短い時間で急落する現象を指します。このような状況は、市場の自動取引システムによって引き起こされることがあります。"
        ),
        QuizQuestion(
        question: "株式市場で使用される「キャップ」とは何の略ですか？",
        choices: [
        "Capitalization",
        "Capital",
        "Capability",
        "Capping"
        ],
        correctAnswerIndex: 0,
        explanation: "「キャップ」は、Capitalization（資本化、市場資本化）の略です。企業の総株式数に株価を掛けた値で、企業の市場でのサイズや価値を表す指標です。"
        ),
        QuizQuestion(
        question: "投資において、特定の株式のパフォーマンスを評価するために使用される指標は何ですか？",
        choices: [
        "ベータ係数",
        "アルファ係数",
        "シャープレシオ",
        "ボラティリティ"
        ],
        correctAnswerIndex: 1,
        explanation: "アルファ係数は、特定の株式が市場の一般的なパフォーマンスをどれだけ上回ったか、または下回ったかを示す指標です。アルファが高いほど、株式は市場平均を上回るパフォーマンスをしていることを意味します。"
        ),
        QuizQuestion(
        question: "投資において、株式市場の全体的な動きに逆らう投資戦略を何と呼びますか？",
        choices: [
        "コントラリアン投資",
        "トレンドフォロー投資",
        "インデックス投資",
        "バリュー投資"
        ],
        correctAnswerIndex: 0,
        explanation: "コントラリアン投資は、株式市場の全体的なトレンドや一般的な意見に逆らう投資戦略です。コントラリアン投資家は、市場が過小評価していると信じる資産を購入し、過大評価していると信じる資産を売却します。"
        )

    ]
//    let QuizIntermediateList: [QuizQuestion] = [
//        QuizQuestion(
//                question: "コンピュータのCPUが直接参照する情報を保存する場所を何というか？",
//                choices: [
//                    "HDD",
//                    "RAM",
//                    "SSD",
//                    "ROM"
//                ],
//                correctAnswerIndex: 1,
//                explanation: "RAM（Random Access Memory）は、CPUが直接参照する情報を一時的に保存する場所です。"
//            ),
//            QuizQuestion(
//                question: "OSの役割として正しくないものはどれか？",
//                choices: [
//                    "ハードウェアの制御",
//                    "アプリケーションの実行",
//                    "電源の供給",
//                    "ファイルシステムの管理"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "電源の供給はOSの役割ではありません。"
//            ),
//            QuizQuestion(
//                question: "インターネット上でコンピュータやネットワークを一意に識別するための番号を何というか？",
//                choices: [
//                    "URL",
//                    "HTTP",
//                    "IPアドレス",
//                    "HTML"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "IPアドレスは、インターネット上でコンピュータやネットワークを一意に識別するための番号です。"
//            ),
//        QuizQuestion(
//                question: "プログラムのバグを修正する作業を何というか？",
//                choices: [
//                    "デバッギング",
//                    "エンコーディング",
//                    "コンパイリング",
//                    "エクスポーティング"
//                ],
//                correctAnswerIndex: 0,
//                explanation: "プログラムのバグを修正する作業をデバッギングと言います。"
//            ),
//            QuizQuestion(
//                question: "データベースの設計段階で、実際のテーブルやカラムを決定する段階を何というか？",
//                choices: [
//                    "論理設計",
//                    "物理設計",
//                    "外部設計",
//                    "内部設計"
//                ],
//                correctAnswerIndex: 1,
//                explanation: "データベースの物理設計では、実際のテーブルやカラムを決定します。"
//            ),
//            QuizQuestion(
//                question: "オブジェクト指向プログラミングにおいて、オブジェクトの特性や振る舞いを定義したものを何というか？",
//                choices: [
//                    "メソッド",
//                    "プロパティ",
//                    "クラス",
//                    "インスタンス"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "クラスはオブジェクトの特性や振る舞いを定義します。"
//            ),
//            QuizQuestion(
//                question: "Webページの見た目やレイアウトを制御する技術は何か？",
//                choices: [
//                    "HTML",
//                    "CSS",
//                    "JavaScript",
//                    "PHP"
//                ],
//                correctAnswerIndex: 1,
//                explanation: "CSSはWebページの見た目やレイアウトを制御する技術です。"
//            ),
//            QuizQuestion(
//                question: "プログラムの実行中に発生する予期しない事象を何というか？",
//                choices: [
//                    "エラー",
//                    "バグ",
//                    "例外",
//                    "イベント"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "プログラムの実行中に発生する予期しない事象を例外と言います。"
//            ),
//            QuizQuestion(
//                question: "インターネットの基盤となる技術を何というか？",
//                choices: [
//                    "HTTP",
//                    "HTML",
//                    "TCP/IP",
//                    "FTP"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "インターネットの基盤となる技術はTCP/IPです。"
//            ),
//            QuizQuestion(
//                question: "Java言語で文字列を扱うクラスは何か？",
//                choices: [
//                    "Str",
//                    "StringBuffer",
//                    "String",
//                    "Text"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "Java言語で文字列を扱うクラスはStringです。"
//            ),
//            QuizQuestion(
//                question: "データベースで、データの重複を避けるための制約を何というか？",
//                choices: [
//                    "外部キー",
//                    "主キー",
//                    "インデックス",
//                    "参照整合性"
//                ],
//                correctAnswerIndex: 1,
//                explanation: "データの重複を避けるための制約は主キーです。"
//            ),
//            QuizQuestion(
//                question: "ソフトウェアの開発手法で、短いサイクルを繰り返しながら開発を進める方法を何というか？",
//                choices: [
//                    "ウォーターフォールモデル",
//                    "スパイラルモデル",
//                    "Vモデル",
//                    "アジャイル開発"
//                ],
//                correctAnswerIndex: 3,
//                explanation: "短いサイクルを繰り返しながら開発を進める方法はアジャイル開発です。"
//            ),
//            QuizQuestion(
//                question: "OSの役割として正しくないものはどれか？",
//                choices: [
//                    "ハードウェアの制御",
//                    "ファイルの管理",
//                    "ネットワークの設定",
//                    "ビジネスロジックの処理"
//                ],
//                correctAnswerIndex: 3,
//                explanation: "ビジネスロジックの処理はアプリケーションの役割であり、OSの直接の役割ではありません。"
//            ),
//            QuizQuestion(
//                question: "次のうち、非関係データベース管理システム(RDBMS)はどれか？",
//                choices: [
//                    "MySQL",
//                    "MongoDB",
//                    "Redis",
//                    "Cassandra"
//                ],
//                correctAnswerIndex: 1,
//                explanation: "MongoDBはドキュメント指向の非関係データベース管理システムです。"
//            ),
//            QuizQuestion(
//                question: "次のうち、オープンソースのWebサーバソフトウェアはどれか？",
//                choices: [
//                    "IIS",
//                    "Apache",
//                    "WebLogic",
//                    "WebSphere"
//                ],
//                correctAnswerIndex: 1,
//                explanation: "ApacheはオープンソースのWebサーバソフトウェアです。"
//            ),
//            QuizQuestion(
//                question: "プログラム内で、変数の値が変更されないようにする修飾子を何というか？",
//                choices: [
//                    "static",
//                    "public",
//                    "private",
//                    "final"
//                ],
//                correctAnswerIndex: 3,
//                explanation: "変数の値が変更されないようにする修飾子はfinalです。"
//            ),
//            QuizQuestion(
//                question: "次のうち、動的なWebページの生成に使用されるスクリプト言語はどれか？",
//                choices: [
//                    "HTML",
//                    "CSS",
//                    "JavaScript",
//                    "XML"
//                ],
//                correctAnswerIndex: 2,
//                explanation: "動的なWebページの生成に使用されるスクリプト言語はJavaScriptです。"
//            ),
//            QuizQuestion(
//                question: "オブジェクト指向プログラミングにおける「継承」の主な目的は何か？",
//                choices: [
//                    "コードの再利用",
//                    "データの保護",
//                    "効率的なメモリ使用",
//                    "高速な実行速度"
//                ],
//                correctAnswerIndex: 0,
//                explanation: "オブジェクト指向プログラミングにおける「継承」の主な目的はコードの再利用です。"
//            ),
//        QuizQuestion(
//               question: "次のうち、オペレーティングシステム(OS)の役割ではないものはどれか？",
//               choices: [
//                   "プロセス管理",
//                   "メモリ管理",
//                   "画像編集",
//                   "デバイス管理"
//               ],
//               correctAnswerIndex: 2,
//               explanation: "画像編集はアプリケーションソフトウェアの役割であり、OSの役割ではありません。"
//           ),
//           QuizQuestion(
//               question: "次のうち、プログラミング言語の1つであるのはどれか？",
//               choices: [
//                   "HTML",
//                   "Python",
//                   "HTTP",
//                   "FTP"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "Pythonはプログラミング言語の1つです。"
//           ),
//           QuizQuestion(
//               question: "ソフトウェアのバグを修正するためのソフトウェアの更新を何というか？",
//               choices: [
//                   "Upgrade",
//                   "Patch",
//                   "Install",
//                   "Deploy"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "ソフトウェアのバグを修正するためのソフトウェアの更新をPatchと呼びます。"
//           ),
//           QuizQuestion(
//               question: "次のうち、関係データベース管理システム(RDBMS)の特徴ではないものはどれか？",
//               choices: [
//                   "テーブル構造",
//                   "非構造化データ",
//                   "主キーと外部キー",
//                   "正規化"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "非構造化データは、NoSQLデータベースの特徴の1つです。"
//           ),
//           QuizQuestion(
//               question: "コンピュータネットワークにおいて、IPアドレスを動的に割り当てるプロトコルは何か？",
//               choices: [
//                   "DNS",
//                   "DHCP",
//                   "FTP",
//                   "HTTP"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "DHCPは、IPアドレスを動的に割り当てるプロトコルです。"
//           ),
//           QuizQuestion(
//               question: "次のうち、暗号技術を使用してデータの改ざんや盗聴を防ぐプロトコルはどれか？",
//               choices: [
//                   "HTTP",
//                   "HTTPS",
//                   "FTP",
//                   "SMTP"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "HTTPSは、暗号技術を使用してデータの改ざんや盗聴を防ぐプロトコルです。"
//           ),
//           QuizQuestion( //長い
//               question: "オブジェクト指向プログラミングにおける「カプセル化」とは何か？",
//               choices: [
//                   "複数のオブジェクトを一つにまとめること",
//                   "オブジェクトの状態を外部から変更できないようにすること",
//                   "一つのクラスから複数のクラスを作成すること",
//                   "異なるデータ型を一つのクラスで扱うこと"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "カプセル化は、オブジェクトの状態を外部から変更できないようにすることを指します。"
//           ),
//           QuizQuestion(
//               question: "次のうち、プログラムの実行中に発生する予期しない事態を扱うための仕組みは何か？",
//               choices: [
//                   "ループ",
//                   "例外処理",
//                   "再帰",
//                   "ポリモーフィズム"
//               ],
//               correctAnswerIndex: 1,
//               explanation: "例外処理は、プログラムの実行中に発生する予期しない事態を扱うための仕組みです。"
//           ),
//           QuizQuestion(
//               question: "次のうち、データベースのテーブル間の関係を示すものはどれか？",
//               choices: [
//                   "インデックス",
//                   "トランザクション",
//                   "リレーション",
//                   "ビュー"
//               ],
//               correctAnswerIndex: 2,
//               explanation: "リレーションは、データベースのテーブル間の関係を示すものです。"
//           ),
//        QuizQuestion(
//                        question: "どのプロトコルがファイル転送に一般的に使用されますか？",
//                        choices: [
//                            "HTTP",
//                            "HTTPS",
//                            "FTP",
//                            "TCP"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "FTP（File Transfer Protocol）は、ネットワーク上でのファイル転送に使用されるプロトコルです。"
//                    ),
//        QuizQuestion(
//                        question: "OSIモデルの第3層は何ですか？",
//                        choices: [
//                            "トランスポート層",
//                            "ネットワーク層",
//                            "データリンク層",
//                            "セッション層"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "OSIモデルの第3層はネットワーク層です。"
//                    ),
//        QuizQuestion(
//                        question: "どのプログラミング言語が主に統計計算とデータ分析に使用されますか？",
//                        choices: [
//                            "Java",
//                            "C++",
//                            "R",
//                            "PHP"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "Rは、統計計算とデータ分析に広く使用されるプログラミング言語です。"
//                    ),
//        QuizQuestion(
//                        question: "インターネットの主なバックボーンプロトコルは何ですか？",
//                        choices: [
//                            "HTTP",
//                            "FTP",
//                            "TCP/IP",
//                            "UDP"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "インターネットの主なバックボーンプロトコルはTCP/IPです。"
//                    ),
//        QuizQuestion(
//                        question: "どのツールや技術がバージョン管理に使用されますか？",
//                        choices: [
//                            "Docker",
//                            "Git",
//                            "Kubernetes",
//                            "Jenkins"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "Gitは、ソースコードのバージョン管理に使用されるツールです。"
//                    ),
//        QuizQuestion(
//                        question: "どのデータ構造が先入れ先出り（FIFO）の原則に従いますか？",
//                        choices: [
//                            "スタック",
//                            "キュー",
//                            "ツリー",
//                            "グラフ"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "キューは、先入れ先出り（FIFO）の原則に従うデータ構造です。"
//                    ),
//        QuizQuestion(
//                        question: "どのHTTPメソッドがリソースの作成に使用されますか？",
//                        choices: [
//                            "GET",
//                            "POST",
//                            "PUT",
//                            "DELETE"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "POSTメソッドは、リソースの作成に使用されます。"
//                    ),
//        QuizQuestion(
//                        question: "どのポート番号がHTTPに割り当てられていますか？",
//                        choices: [
//                            "21",
//                            "22",
//                            "80",
//                            "443"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "HTTPはポート番号80を使用します。"
//                    ),
//        QuizQuestion(
//                        question: "どのLinuxコマンドがディレクトリの内容を一覧表示しますか？",
//                        choices: [
//                            "cd",
//                            "ls",
//                            "mv",
//                            "rm"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "lsコマンドは、ディレクトリの内容を一覧表示します。"
//                    ),
//        QuizQuestion(
//                        question: "ソフトウェア開発において、ユニットテストは何をテストしますか？",
//                        choices: [
//                            "個々の関数やメソッド",
//                            "システム全体",
//                            "統合部分",
//                            "ユーザーインターフェース"
//                        ],
//                        correctAnswerIndex: 0,
//                        explanation: "ユニットテストは、個々の関数やメソッドの動作をテストします。"
//                    ),
//        QuizQuestion(
//                        question: "どのHTMLタグを使用して、順序なしリストを作成しますか？",
//                        choices: [
//                            "<ol>",
//                            "<ul>",
//                            "<li>",
//                            "<dl>"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "<ul>タグは、順序なしリストを作成するために使用されます。"
//                    ),
//        QuizQuestion(
//                        question: "どのプロトコルがWebサーバーとブラウザ間で安全な通信を提供しますか？",
//                        choices: [
//                            "HTTP",
//                            "HTTPS",
//                            "FTP",
//                            "SMTP"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "HTTPSは、Webサーバーとブラウザ間で安全な通信を提供するプロトコルです。"
//                    ),
//        QuizQuestion(
//                        question: "どのデータベース言語がデータの操作とクエリに使用されますか？",
//                        choices: [
//                            "HTML",
//                            "CSS",
//                            "SQL",
//                            "XML"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "SQLは、データベースのデータ操作とクエリに使用される言語です。"
//                    ),
//        QuizQuestion(
//                        question: "どのネットワークデバイスがデータパケットを転送しますか？",
//                        choices: [
//                            "ルーター",
//                            "スイッチ",
//                            "ハブ",
//                            "モデム"
//                        ],
//                        correctAnswerIndex: 0,
//                        explanation: "ルーターは、データパケットを転送するネットワークデバイスです。"
//                    ),
//        QuizQuestion(
//                        question: "どのソフトウェア開発フレームワークがRubyで書かれていますか？",
//                        choices: [
//                            "Django",
//                            "Flask",
//                            "Ruby on Rails",
//                            "Spring Boot"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "Ruby on Railsは、Rubyで書かれたソフトウェア開発フレームワークです。"
//                    ),
//        QuizQuestion(
//                        question: "どのプロトコルがコンピュータのホスト名をIPアドレスに変換しますか？",
//                        choices: [
//                            "DHCP",
//                            "DNS",
//                            "FTP",
//                            "HTTP"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "DNS（Domain Name System）は、コンピュータのホスト名をIPアドレスに変換するプロトコルです。"
//                    ),
//        QuizQuestion(
//                        question: "どのプログラミングパラダイムが関数を第一級の市民として扱いますか？",
//                        choices: [
//                            "オブジェクト指向プログラミング",
//                            "手続き型プログラミング",
//                            "関数型プログラミング",
//                            "論理プログラミング"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "関数型プログラミングでは、関数は第一級の市民として扱われます。"
//                    ),
//        QuizQuestion(
//                        question: "どのツールがコンテナオーケストレーションに使用されますか？",
//                        choices: [
//                            "Docker",
//                            "Kubernetes",
//                            "Git",
//                            "Jenkins"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "Kubernetesは、コンテナオーケストレーションに使用されるツールです。"
//                    ),
//        QuizQuestion(
//                        question: "どのアルゴリズム分類が問題の最適な解決策を見つけることを目的としていますか？",
//                        choices: [
//                            "ソートアルゴリズム",
//                            "検索アルゴリズム",
//                            "最適化アルゴリズム",
//                            "暗号化アルゴリズム"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "最適化アルゴリズムは、問題の最適な解決策を見つけることを目的としています。"
//                    ),
//        QuizQuestion(
//                        question: "どのプログラミング言語がブラウザで実行されますか？",
//                        choices: [
//                            "Python",
//                            "JavaScript",
//                            "Ruby",
//                            "C++"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "JavaScriptは、ブラウザで実行されるプログラミング言語です。"
//                    ),
//        QuizQuestion(
//                        question: "プログラミング言語Javaは、どの種類の言語に分類されますか？",
//                        choices: [
//                            "コンパイル言語",
//                            "スクリプト言語",
//                            "マークアップ言語",
//                            "アセンブリ言語"
//                        ],
//                        correctAnswerIndex: 0,
//                        explanation: "Javaはコンパイル言語の一つです。ソースコードは最初にバイトコードにコンパイルされ、その後、Java Virtual Machine (JVM)上で実行されます。"
//                    ),
//        QuizQuestion(
//                        question: "クラウドコンピューティングのモデルの一つで、ユーザーがインフラストラクチャーを管理する必要がないものは何ですか？",
//                        choices: [
//                            "IaaS",
//                            "PaaS",
//                            "SaaS",
//                            "FaaS"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "SaaS（Software as a Service）は、ユーザーがインフラストラクチャーを管理する必要がないクラウドコンピューティングのモデルです。"
//                    ),
//        QuizQuestion(
//                        question: "どのプロトコルが電子メールの送受信に使用されますか？",
//                        choices: [
//                            "HTTP",
//                            "FTP",
//                            "SMTP",
//                            "DHCP"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "SMTP（Simple Mail Transfer Protocol）は、電子メールの送受信に使用されるプロトコルです。"
//                    ),
//        QuizQuestion(
//                        question: "ビットとバイトの関係は何ですか？",
//                        choices: [
//                            "1ビット = 8バイト",
//                            "1バイト = 8ビット",
//                            "1ビット = 1024バイト",
//                            "1バイト = 1024ビット"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "1バイトは8ビットです。"
//                    ),
//        QuizQuestion(
//                        question: "どのOSがオープンソースソフトウェアですか？",
//                        choices: [
//                            "Windows",
//                            "macOS",
//                            "Linux",
//                            "MS-DOS"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "Linuxはオープンソースのオペレーティングシステムです。"
//                    ),
//        QuizQuestion(
//                        question: "SQLのどのコマンドを使用して、データベースからデータを取得しますか？",
//                        choices: [
//                            "INSERT",
//                            "UPDATE",
//                            "DELETE",
//                            "SELECT"
//                        ],
//                        correctAnswerIndex: 3,
//                        explanation: "SELECT文は、データベースからデータを取得するために使用されます。"
//                    ),
//        QuizQuestion(
//                        question: "どのネットワークトポロジーで、各デバイスが中央のハブに接続されていますか？",
//                        choices: [
//                            "スター",
//                            "メッシュ",
//                            "リング",
//                            "バス"
//                        ],
//                        correctAnswerIndex: 0,
//                        explanation: "スタートポロジーでは、各デバイスが中央のハブに接続されています。"
//                    ),
//        QuizQuestion(
//                        question: "どのソフトウェア開発手法が、定期的な短いイテレーションを使用しますか？",
//                        choices: [
//                            "ウォーターフォールモデル",
//                            "アジャイル開発",
//                            "スパイラルモデル",
//                            "Vモデル"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "アジャイル開発は、定期的な短いイテレーションを使用するソフトウェア開発のアプローチです。"
//                    ),
//        QuizQuestion(
//                        question: "IPv4アドレスは何ビットですか？",
//                        choices: [
//                            "16ビット",
//                            "32ビット",
//                            "64ビット",
//                            "128ビット"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "IPv4アドレスは32ビットのアドレスです。"
//                    ),
//        QuizQuestion(
//                        question: "どのHTMLタグを使用して、Webページに画像を挿入しますか？",
//                        choices: [
//                            "<img>",
//                            "<picture>",
//                            "<media>",
//                            "<graphic>"
//                        ],
//                        correctAnswerIndex: 0,
//                        explanation: "<img>タグは、Webページに画像を挿入するために使用されます。"
//                    ),
//        QuizQuestion(
//                        question: "どのプロトコルがWebブラウザとWebサーバー間の通信に使用されますか？",
//                        choices: [
//                            "FTP",
//                            "HTTP",
//                            "SMTP",
//                            "TCP"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "HTTP（HyperText Transfer Protocol）は、WebブラウザとWebサーバー間の通信に使用されるプロトコルです。"
//                    ),
//        QuizQuestion(
//                        question: "RAIDのどのレベルがミラーリングを提供しますか？",
//                        choices: [
//                            "RAID 0",
//                            "RAID 1",
//                            "RAID 5",
//                            "RAID 10"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "RAID 1は、データのミラーリングを提供するRAIDレベルです。"
//                    ),
//        QuizQuestion(
//                        question: "どのプログラミング言語が主にWeb開発に使用されますか？",
//                        choices: [
//                            "Python",
//                            "JavaScript",
//                            "C++",
//                            "Java"
//                        ],
//                        correctAnswerIndex: 1,
//                        explanation: "JavaScriptは、クライアントサイドのスクリプティング言語として、主にWeb開発で使用されます。"
//                    ),
//        QuizQuestion(
//                        question: "どのデータベース管理システムがオープンソースですか？",
//                        choices: [
//                            "Oracle Database",
//                            "Microsoft SQL Server",
//                            "MySQL",
//                            "IBM Db2"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "MySQLは、オープンソースのリレーショナルデータベース管理システムです。"
//                    ),
//        QuizQuestion(
//                        question: "どのソートアルゴリズムが最も効率的ですか？",
//                        choices: [
//                            "バブルソート",
//                            "インサーションソート",
//                            "クイックソート",
//                            "セレクションソート"
//                        ],
//                        correctAnswerIndex: 2,
//                        explanation: "クイックソートは、平均的なケースで高い効率を持つソートアルゴリズムです。"
//                    )
//    ]

    @State private var shuffledQuizList: [QuizQuestion]
    private var authManager = AuthManager()
    private var audioManager = AudioManager.shared

    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _shuffledQuizList = State(initialValue: QuizIntermediateList.shuffled())
    }
    @StateObject var sharedInterstitial = Interstitial()
    var body: some View {
        QuizView(quizzes: shuffledQuizList, quizLevel: .intermediate, authManager: authManager,audioManager: audioManager,isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizIntermediateList_Previews: PreviewProvider {
    static var previews: some View {
        QuizIntermediateList(isPresenting: .constant(false))
    }
}
