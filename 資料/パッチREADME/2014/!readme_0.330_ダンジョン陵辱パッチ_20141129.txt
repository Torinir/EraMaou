﻿eramaou_0.330_ダンジョン陵辱パッチ_20141129

※(eramaou　ver.0.330推奨)

加筆・改変・再アップロード・まとめ収録はご自由にどうぞ。

■使い方
　全てのERBファイルをERBフォルダに上書きコピーしてください。

■仕様
・eramaou_修正パッチ_20141124を同梱しています。
・日数によって襲撃する勇者の最大上限数が増えます。(200日ごとに5人プラス、最大30人）
・野良犬の散歩で陥落してない奴隷が散歩するバグを修正。
・ダンジョンで奴隷側勝利後の勇者陵辱での表示バグを修正。
・ダンジョンで奴隷側勝利後の勇者陵辱で処女喪失と相手を記録するように修正。
・攻撃側と防御側の台詞があべこべだったのを修正。

■追加・修正箇所
　■ARCANA_BATTLE.ERB
　　401行目
　　CALL ATTACK_KOUJO, ARG:0
　　に修正。

　■DUNGEON_BATLLE.ERB
　　656行目。
　　CALL ATTACK_KOUJO, ARG:0
　　690行目
　　CALL ATTACK_KOUJO, ARG:0
　　に修正。

　■DUNGEON_BATLLE2.ERB
　　392行目、414行目、434行目を
　　CALL PC_RYOU, ATKER, DEFER
　　に修正。

　■DUNGEON_RYOUZYOKU.ERB
　　1450行目以降。@PC_RYOU関数を修正。
　　AとBをそれぞれARG:0とARG:1に修正。
　　珠や経験がそれぞれのキャラにプラスされるように修正。
　　V経験やA経験がプラスになるように追記。
　　処女喪失やファーストキス、初体験の相手を記録するように修正。

　■ENTER_ENEMY.ERB
　　26行～35行目
　　日数によって勇者の上限数を増加。200日ごとに5人ずつ増えて30人まで増えます。

　■EVENT_K.ERB
　　696行目～698行目を
　　@ATTACK_KOUJO, ARG:0
　　TARGET = ARG:0
　　に修正。
　　
　■EVENT_NEXTDAY.ERB
　　1153行目
　　@DOG_WALK関数に#DIM DOG_WALKINGを使用。

　　1171行目～1180行目
　　あなた以外で陥落してる奴隷でも調教可能でなければ、あなたが散歩
　　あなた以外で陥落してない奴隷なら、あなたが散歩
　　以上の分岐を追加。

