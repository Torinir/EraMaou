﻿eramaou_修正パッチ_20141124

※(eramaou　ver.0.330推奨)

加筆・改変・再アップロード・まとめ収録はご自由にどうぞ。

■使い方
　全てのERBファイルをERBフォルダに上書きコピーしてください。

■仕様
・迎撃時の行動設定の改行修正
・処刑時の地の文修正
・おねしょ報告バグの修正

■追加・修正箇所
　■SHOP_2.ERB
　　311～349行目　PRINTをPRINTLにしました。

　■EXECUTION.ERB
　　処刑口上を各口上に任せた結果、今までの台詞が気になったので以下の地の文に修正。
　　118行目
　　　PRINTFORMW %SAVESTR:A%はなぜ追放されたのか分からぬまま、愛しいあなたの名前を何度も何度も呟く。
　　121行目
　　　PRINTFORMW %SAVESTR:A%はなぜ追放されたのか分からぬまま、愛しいあなたの名前を何度も何度も呟く。
　　375行目
　　　PRINTFORM %SAVESTR:A%はなぜ肉便器にされるのか分からぬまま、愛しいあなたの名前を叫んで何度も許しを請う。しかし%SAVESTR:PLAYER%は
　　403行目
　　　PRINTFORMW %SAVESTR:A%は全てのペニスが愛しいあなたのモノに見えるようだ
　　467行目
　　　PRINTFORM %SAVESTR:A%はなぜ処刑されるのか分からぬまま、愛しいあなたの名前を叫んで何度も許しを請う。しかし%SAVESTR:PLAYER%は
　　480行目
　　　PRINTFORM %SAVESTR:A%はなぜ処刑されるのか分からぬまま、愛しいあなたの名前を叫んで何度も許しを請う。しかし

　■EVENT_NEXTDAY.ERB
　　掲示板にあるように644行目を以下に変更
　　SIF CFLAG:COUNT:1 != 0



