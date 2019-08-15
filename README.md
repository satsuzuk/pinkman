# pinkman
confファイルに書いたホスト宛にpingを打ち続けるwindows bat

![DEMO](https://raw.githubusercontent.com/satsuzuk/pinkman/master/img/pinkman-demo.gif)


# つかいかた

pinkman.confに
ホスト名[tab]IPアドレス
の形式で監視したいホストを書きます。

pinkman.batをshift-jis/CRLFで保存します。

pinkman.confとpinkman.batを同じディレクトリにおいてbatを起動すると上記の画面のようになります。
pingが通れば緑。だめそうなら赤になります。
赤かったら対象のホストにはpingが通っていないなーとおもってトラブルシュートしましょう。
いつからFailしてるかは、同じディレクトリに生成されるfail_log.txtに時間が記録されます。

# ちゅうい

IPv4しか動きません。

# そのた
このbatファイルは、Interop TokyoのShowNetで使われているdeadman/pingmanの機能をwindowsでダブルクリックで起動したかったので作ってみました。こんな適当なのじゃなくて、本物のdeadmanは↓こちらです。

https://github.com/upa/deadman

pinkなのはpingのタイポです。

# ほんとはこうなったらいいな

confファイルの中身を表示したまま、赤と緑だけがスクロールしたい。

