﻿eramaou ダンジョン罠パッチ

※(eramaou　ver.0.240推奨)

■使い方
　ERBファイルを上書きしてお使いください

■対処した問題
罠がＡにないとＢかＣに設置されていても発動しない。

■上記の問題の原因
罠がＡにないとそのまま@DUNGEON_TRAP関数が終わってしまう

■変更点
$TRAP_LOOPの前後に変数を追加してＢとＣもチェックするようにした。
罠の在庫が切れた場合のIF文を修正してお金が減らないようにした。


◆履歴
　2012.11.26	バグ修正
　