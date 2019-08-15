# pinkman
confファイルに書いたホスト宛にpingを打ち続けるwindows bat

![DEMO](https://raw.githubusercontent.com/satsuzuk/pinkman/master/img/pinkman-demo.gif)


# つかいかた

pinkman.confに
ホスト名[tab]IPアドレス
の形式で監視したいホストを書きます。

pinkman.batをshift-jis/CRLFで保存します。

pinkman.confとpinkman.batを同じディレクトリにおいてbatを起動すると上記の画面のようになります。

#ちゅうい

IPv4しか動きません。

# そのた
Interop Tokyoで使われているdeadmanやその昔使われていたpingmanの機能をwindowsでダブルクリックで起動したかった感じです。
https://github.com/upa/deadman

