﻿eramaou0.301_MONSTER_DATA修正

前提条件
eramaou0.301 + eramaou_PREGNANCY_20140526

修正点
CHARA_MARRIAGE.ERB	CALL MONSTER_DATA を CALL MONSTER_DATA, GROOM_NUM, 5 に修正
DUNGEON_BATTLE.ERB	CALL MONSTER_DATA を CALL MONSTER_DATA, X, COUNT, A, -1 に修正
			@SPEED_PLUS周りをちょっと修正
			@MONSTER_LISTをちょっと修正
DUNGEON_BATTLE2.ERB	CALL MONSTER_DATA を CALL MONSTER_DATA, CFLAG:A:570, 3, A, -1 と CALL MONSTER_DATA, CFLAG:T:570, 4, -1, B に修正
INVASION.ERB		CALL MONSTER_DATA を CALL MONSTER_DATA, X, 0 に修正
INVASION_RYOUZYOKU.ERB	@INVASION_RYOUZYOKUをちょっと修正
MARRIAGE_DAY.ERB	CALL MONSTER_DATA を CALL MONSTER_DATA, LOCAL:0, 5 に修正
MONSTER_DATA.ERB	変数E以外の一文字変数を置き換え
			ピクシー・デュラハン・ヴァンパイアの耐性が雷撃になっていたので修正
			ダイスLOCAL:1(元は変数Z)の挙動がおかしかったので処理を追加
			(この変更で時々ボス化が起きるようになったけど大丈夫だろうか)
MONSTER_PLAY.ERB	CALL MONSTER_DATA を CALL MONSTER_DATA, LOCAL:0, 5 に修正

気になった点
DUNGEON_BATLLE.ERBにある ;全滅時 IF B >= 400
は実行されないように見えるけど必要なのか

