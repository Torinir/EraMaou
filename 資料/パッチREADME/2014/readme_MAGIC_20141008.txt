﻿eramaou_MAGIC_20141008

※(eramaou　ver.0.310推奨)

加筆・改変・再アップロードはご自由にどうぞ。

■使い方
　全てのERBファイルをERBフォルダに上書きコピーしてください。

■仕様
・暫定版です
・カースとスリープの魔法をボス相手に使う時に起きるバグを修正しました

■追加・修正箇所
　■MAGIC.ERB
	バグの起きる原因がボスの魔法耐性で1/10されるか素質の魔法耐性で1/3になったときに
	Y /= 10　か　Y /= 3で
	Yが0になる場合があり、RAND:Yで0が代入されたときにRAND:0ではエラーが出るため。

	カースとスリープの該当箇所である
	280、313、347、381、865、896、929、962行目に
	SIF Y <= 0
		Y = 1
	の2行を追加。
	そして修正箇所に
　　;10/8
　　とコメント追加

　　暫定とある理由は
	900、933、966行目ではCFLAG:12の差をとっていたのに
	実際にチェックしているのはCFLAG:11でどちらが正しいのか分からないため。



