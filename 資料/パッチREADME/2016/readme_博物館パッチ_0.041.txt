﻿eramaou_処刑分化+博物館パッチ_201603

※(eramaou　ver.0.550推奨)

加筆修正・改変・再アップロードはご自由にどうぞ。

■使い方
　全てのERBファイルをERBフォルダに上書きコピーしてください。

■仕様
・「博物館に飾る」内の一部の文章を修正・追記しました。
　┗一部の資質と指摘のあった誤字を修正。

・処刑メニューをちょっとだけいじりました。
　┗肉便器刑と博物館行きを逆にしました。
　┗追放時の文章を変えてみました。
　
・マネキン化口上と球体関節人形化口上を書いてみました。
　┗ランダム生成キャラのみ、ユニークの方は…よていはみていということで…

・口上テンプレ更新。

■追加・修正箇所
　■EXECUTION.ERB
　　処刑メニューの「肉便器にする」と「博物館に飾る」を入れ替えました。

　■MUSEUM.ERB
　　一部の刑に追記。誤字修正。
　　対応資質追加。

　■BANISHMENT.ERB
　　追放時の文章を追記・修正。
　　以前作成時に消し忘れた簡易処刑関数を削除。

　■PUBLIC_EXECUTION.ERB
　　「魂粉砕」に追記。
　　以前作成時に消し忘れた簡易処刑関数を削除。

　■GROTESQUE.ERB
　　MATUROが無かったので追加。
　　以前作成時に消し忘れた簡易処刑関数を削除。

　■EVENT_K0_慈愛.ERB
　■EVENT_K1_自信家.ERB
　■EVENT_K2_気弱.ERB
　■EVENT_K3_高貴.ERB
　■EVENT_K4_冷徹.ERB
　■EVENT_K5_マオ.ERB
　■EVENT_K6_悪女.ERB
　■EVENT_K7_ハート.ERB
　■EVENT_K8_スペード.ERB
　■EVENT_K9_ダイヤ.ERB
　■EVENT_K10_クラブ.ERB
　■EVENT_K11_リリィ.ERB
　■EVENT_K12_知的.ERB
　■EVENT_K13_庇護者.ERB
　■EVENT_KXX.ERB
　　処刑メニュー内の入れ替えに伴う口上用関数更新。
　　「追放し元の生活に戻す」用口上関数が無かったので追加。
　　ランダム生成される性格(K0,K1,K2,K3,K4,K6,K12,K13)に口上追加。
　　（庇護者のみ）売却時に、売却後の末路が表示されなかった点を修正。

■今回の更新
・MUSEUM.ERB
　①反抗的か抵抗+反発3の分岐を、反発3オンリーと反発3+（反抗的、気丈、生意気、抵抗）に分けました
　前回追加した文は、反発3+（反抗的、気丈、生意気、抵抗）の方にしました
　反発3オンリーだと、絶対に屈したりしない！って表情のまま固まります
　凛とした表情なんだけど全裸で飾られてるのいいよね

　②マネキン化に加筆+指摘のあった球体関節人形化の文の修正
　一部を取り外すだけじゃなく、さっきまで普通の人間だった彼女が「モノ」として軽々と持ち運ばれてしまう…っていう文を追加
　あとマネキン化に際して、体型とかチャームポイントとか強調するようにしました
　
　③噴水分岐に追記。
　おもらし癖で対応資質がない場合に、たまに小便小僧？のポーズになります
　女性の立小便ポーズいいよね

・BANISHMENT.ERB
　ただ追放するだけじゃ面白くないので、なんかオプションつけて追放しようか？という感じで
　追放時のオプションを選ぶ感じにしてみました

・PUBLIC_EXECUTION.ERB
　「魂粉砕」に追記
　怪しい宗教団体とかに引き取られて、信仰対象のなんかの憑代として使われる…みたいな？

・EVENT_K0,K1,K2,K3,K4,K6,K12,K13
　マネキン化口上追加+球体関節人形化口上追加
　それぞれ、『こんなポーズをとらせてどうするの？』的な台詞と『怖い…はやくここから逃げないと！』的な台詞をイメージしてます
　なんか違う…ってなったら修正してもいいのよ

■ここから下は俺のメモ帳
石化いいよね！僕も大好きだ！
博物館ってあるんだし、石像だけ飾るんじゃつまらない…
やっぱりもっと色んな種類の像とか置きたいよね！置ける像の種類をもっと追加したい！
した
石化と剥製化はもとからあったから特に捻る必要もなかった
もしかしたら元に戻せるかもしれない石像とか宝石像とか金属像が
戦闘の余波で一部損壊してるのを見て絶望する勇者changいいよね…

●固まった元勇者changについての個人的なイメージ
固まった後は意識残って無い(噴水像の場合は1日位は残る+水噴き出してる内に意識が薄れてく)
固まる際に衣服とかは破れて基本全裸で飾られてる、と思ってます

蝋人形化：イメージしてるのはシャコーカイ液みたいな感じで、BUKKAKEられたら蝋化する蝋を勇者の頭上からｼｭｩｩｩｩｩｩｩ!!!1
蝋人形と書くと何か芸術品な感じがしますが、他にいい表現がないので蝋人形化としてます

マネキン：eramaouがどの辺りの時代なのかわからなかったけど、フィクションなんだしいいよね
マネキンって言葉だけだと販売員とかそういう意味でもあるんだね…知らなかったそんなの…
固まってるだけだとただのコーティングなので腰から上を外してみた
四肢の各部とか腰のあたりが取り外し可能になってる、という表現をしたかった
文章力ある「」が居たら加筆してくだち…

球体間接：全勇者　もくせいさん化　計画
いや木製にしてるわけじゃないんだけど、ああいう球体間接人形いいよね…
天然の人肌から無機質な人工物に変わってる感を表現したかった

金属化：やっぱりメジャーな固めといったらミダスの手に代表される金属化ですよね！！11111！
カタカナ表記だと中途半端になってしまったので漢字表記にしました
あと金と白金は違っても銀と白銀って変わらないということを知りました

氷像：めっちゃ寒い場所に放置して氷漬け！いいよね…
とりあえず魔方陣に冷気発生させてその中で凍ってる的な表現で
表面だけ凍りついてるか、中身まで氷になってるかはランダムです
あぁでも完全に氷の塊になった元勇者changを砂漠のど真ん中に置いて溶かしたい
もしかしたら元に戻せるかもしれない氷像が溶けてるのを見て絶望する勇者changいいよね…

宝石化：金属化と似てる気がするけど、こっちは固まった後に透明感がある方
一通り書いてガラス化が無いじゃん！ってなってあわてて追加したけどガラスって金属？宝石？
迷ったけどとりあえずこちらに追加

家具化：人体家具ですよ、「」王様！
　テーブル化：状態変化系の絵でやや見かける
　普通に考えると首から上の部分が出っ張って邪魔な気がする

　椅子化：よく見かける気がする
　首から上をどこに持ってくるかで座り心地が変わってくる…のかもしれない

　タンス化：家具化を追加するにあたって椅子とテーブルと燭台だけだと種類が少ないかなと思って入れた
　自分で書いておいてなんだけど人型のタンスってなかなか斬新だなぁと感じられ
　例えばおっぱい引っ張ったら小物入れになってるとかお腹のところにも棚が出来てるとか

　燭台化：蝋燭化いいよね…
　複数人を燭台にして一つにまとめればシャンデリアにも出来るし
　照明器具化(電球化等)も考えたけど、蝋燭の方がわかりやすいかなって…

　花瓶化：見かけたので追加したけどいわゆるレディポット的な…？

絵画化：何も書いて無い額縁に吸い込まれて、ついでに絵が出来るみたいな表現になっちゃったけどいいよね
ちょっと変な表現もあるかもしれないので加筆修正してもいいのよ
絵の中には独立した異世界があって、元勇者changは不老のまま無限ループしてます
だからMUSEUM.ERBのコメントアウトに書かれてる内容がずっとループしてるんでしょうきっと
あと絵が物理的に破れたりしたら絵の世界ごと勇者changも死ぬんじゃないでしょうか

●一部素質への対応について
　①：石像と金属像にふたなり噴乳小便少女を追加しました　宝石像で噴水はちょっと想像できなかったけど多分追加する
　　ふたなりと母乳体質とおもらし癖に対応してます
　　ふたなりかつおもらし癖の文章は悩んだけど、どうせペニスからどっちも出てるだろうと思ってるので書いてません
　　噴水っ娘…いいよね…
　　噴水にしたときだけは元勇者changの意識残して
　　いろいろ噴き出してくうちに記憶とか大事なものも一緒に噴き出しちゃって
　　最終的にはなんかよくわかんないけどきもちいいからいいや…みたいな感じで本人の意識がフェードアウトしてくの

　②：対応してる資質
　　反発3+(反抗的、気丈、生意気、抵抗)：今にも襲い掛かってきそう（噴水像化してるなら各部分から水が駄々漏れ）
　　反発3：絶対に屈したりしない！という顔
　　愛：穏やかに微笑んだまま固まる
　　妊娠中：ボテ腹で固まる（胎児の状態についてはご想像にお任せ）
　　自慰しやすい・倒錯的：なんかよくわからないけどすっごく興奮した状態で固まる
　　目立ちたがり・露出狂：ボディ見せつけ像
　　悲観的・大人しい：身体の変化は止められないし抵抗しても無駄だから色々とげっげっげ
　　恥じらい：両手で身体隠したかった　隠しきる前に固まったよ…
　　牝犬：固まる前に犬の振る舞いを思い出し、とりあえず四つん這いかお座り
　　魅惑：独特の美しさを醸し出す
　　噴水像で上記資質がない場合：ふたなりで小便小僧、母乳体質で膝立で胸突き出し、おもらし癖でエロ蹲踞（たまに立小便）


■追加よてい(次に書く・よていはみてい)
・飾るときの対応資質増やす
　牝犬だけで固める「」王様は少ないかもしれないので獣姦中毒3を入れる？
　剥製にするとき動物耳or人狼族があれば半獣剥製？
　勇者になる前の生活が無限ループしそうな絵画を増やしたい

・真珠化を追加したい　石か金属か宝石のどれにあたるかが微妙
　宝石…か？透明感あんまないけど

・噴水像関連に加筆したい
　口からどばどば水が出たり(対応してそうな資質がないので確率で生成？)
　あるいはケツから噴水したり(排便癖…はmaouでは採用されてないので尻穴狂い？)
　ヴァギナからは…視覚的に分かりづらい？(資質的には濡れやすいor常時発情があれば)
　追加できれば尿道+ヴァギナ+ケツで下半身緩すぎる噴水等も
　噴き出す水の勢いも3段階くらいで分けたい(ちょろちょろと弱めに出る、普通、勢い強め)
　博物館だけじゃなく、野外に放置もしたい 錆びたり欠けたり皆の待ち合わせ場所になったり

・男体化と記憶消去に追記
　故郷に帰った頃には精神男性化が完了してて想い人とかに会ってもティンと来ないとか
　故郷に流れ着いたはいいものの、家族も憧れの人も故郷の恋人も全部忘れてるので絶望されるとかそういうの
　
・処刑口上が少ないので加筆したい
　主に自分で追加・分化した処刑に加筆を
　固める刑とか男性化とか記憶消去とか魂粉砕とか…

■追加したい(書いてはみた・いじりとちゅう)
・植物化！
　→陽があたりそうな場所及び施設が無いのでそこから追加するべきか
　　種なり胞子なりで植物化を進行させて庭とか森に放置
　　その後魔力とか瘴気で、かわいい植物がぐんぐん育つみたいな？

・繭とか蛹から孵化！
　繭に取り込まれて変態(身体ごと溶けて再構成)した後孵化とか
　元勇者changの体内に卵か幼虫入れて成長したら背中から孵化とか

■もっと追加したい(案だけ)
・氷像は博物館に飾ってもいいけど、せっかくだから氷室に飾りたい…
　→と思ったけど氷室の施設効果的に侵攻してくる勇者が不利になりすぎる気がする
・固め的に封印系も追加するかも
　→壁埋めとかカーボンフリーズとか水晶の中に閉じ込めるとかそういうの
・状態変化系の刑も追加したい
　→膨体化とか箱化は何か違う気がする　食品化…チョコ化あたりはやりたいが
・機械化改造もいいよね…
　→と思ったけどそれっぽい施設無いし洗脳の指輪とか戦闘員化刑あるしで機械にする理由が…