﻿
-----------------------
	モンスター戦改良
-----------------------

◆モンスターの攻撃順を変更
DUNGEON_BATLLE.ERB
	@MONSTER_ATTACK
攻撃を受けるモンスターは前列からだが、
攻撃を行うモンスターは順番に巡るように
上手くいけば前列の壁役が耐えている間に攻撃力の高い後列が攻撃したり
1文字変数も少なく

ARCANA_BATTLE.ERB
DUNGEON_BATLLE2.ERB
CALL MONSTER_ATTACKに引数を設定

◆忍術無しのときの攻撃値減少を1増加
DUNGEON_BATLLE.ERB
	@MONSTER_ATTACK 1019行辺り、+1
DUNGEON_BATLLE2.ERB
	@ENEMY_ATTACK2 893行辺り、+1
	@MONSTER_ATTACK2 1068行辺り、+1
ARCANA_BATTLE.ERB
	@ENEMY_ATTACK3 335行辺り、+1
	@MONSTER_ATTACK3 509行辺り、+1
ダメージが二桁の場合実質意味無かったので
最低でも1減るようにしました

◆勇者の攻撃によって1部隊が全滅しても攻撃を行うように
DUNGEON_BATLLE.ERB
	@DUNGEON_PARTY_BATTLE 190行辺り条件変更
CALL ENEMY_ATTACKの条件を
RESULT=999の強制中断以外に変更

◆先制攻撃は戦闘開始前の一回に限定
DUNGEON_BATLLE.ERB 65行辺り
DUNGEON_BATLLE2.ERB 95行辺り
ARCANA_BATTLE.ERB 16行辺り
いい加減強すぎたので弱体化
メインの戦闘ループ前に
先制攻撃フェイズを用意
元々こういうイメージを想定してました
2段攻撃はやりすぎたね……

◆攻撃の種類に、先手・後手・先制を設定
DUNGEON_BATLLE.ERB
	@ENEMY_ATTACK
	@MONSTER_ATTACK
DUNGEON_BATLLE2.ERB
	@ENEMY_ATTACK2
	@MONSTER_ATTACK2
ARCANA_BATTLE.ERB
	@ENEMY_ATTACK3
	@MONSTER_ATTACK3
引数を設定
変数を設定
D→DMG
Y,X→DEF
Z廃止
先手のほうがダメージが2割増えるように
先制時のダメージも一度きりなので大きく

------------------------------
	一部魔法のパーティ対応
------------------------------
MAGIC.ERB
@TELEPORT_MAGIC
@HEAL_MAGIC
テレポートとヒールを仲間にも使えるように

-----------------------
	罠の強化
-----------------------
DUNGEON_TRAP.ERB 902、910行目
シュートの罠でパーティ分断を行えるように

@SLAVE_TRAP_SET 1047行目
限界まで補充された罠を換金するように

※罠の威力強化は、これ以上強くすると罠レベル強化しだいで
即死状態になるのでやめました（要調整継続）

-----------------------
	結婚生活
-----------------------
MARRIAGE_DAY.ERB
条件を追加（迎撃中とかもラブラブしてて変だったので）
A==0(魔王の結婚)の場合、絶望しないように

--------------------------
	未実装の素質を設定
--------------------------
CHAR_MAKE.ERB 112行目、428行目辺り
貧乳・巨乳のほか、稀に絶壁・爆乳が出現
神官と巫女が治癒を持つように
戦士と騎士が鼓舞を持つように

--------------------------
	媚薬関係
--------------------------
EVENT_ADDICT.ERB
勇者も発症する場合を考えて、文面を変更
侵攻中の場合、陥落する
ただ、勇者を媚薬漬けにする戦術は余りに強すぎる気がするので
現在は未実装
今後の予定として……
あと侵攻中の勇者が看病しないように

--------------------------
	指輪関係
--------------------------
SYSTEM.ERB 323行辺り
CHAR_ST.ERB
@WEAPON_RESTORE内
Item.csvの説明文
怪力の指輪・強靭の指輪のステータス成長を
一時的なステータス強化に変更
ちょっと強すぎました

--------------------------
	魔界知識
--------------------------
SHOP_LABO.ERB
魔族セットを20000円に
魔法耐性を50000円に値引き
※収入減による調整
※スナック感覚で魔族にしよう

-----------------------
	バグフィックス
-----------------------

COMF_CONDOM.ERB
180行目にRETURN 1を設定

GET_SPECIALTALENT.ERB 335、402行目辺り
強化素質・常時発情のフラグになぜか-1が入っていて無効化されているので、
条件を0以下に設定して開放

-----------------------
	今後の予定
-----------------------
予定は未定

◆口上追加
知的口上・庇護者口上

◆戦闘処理一本化
ENEMY_ATTACKとかMONSTER_ATTACKとか重複している処理をなんとかする

◆忍術の仕様変更
変わり身の術…的な効果で、敵攻撃のミス率を増加させたり
火遁水遁的な効果で属性ダメージを増やしたり…
いまの良く分からない効果は自分でも良く分からないので
そのうち変えたいです

