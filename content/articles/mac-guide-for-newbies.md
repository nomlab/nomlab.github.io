+++
title = 'Mac増殖中'
date =  '2012-09-11T15:45:52+09:00'
draft = false
showAuthor = true
authors = ['nom']
+++

<p>最近研究室にMacがあふれています．</p>
<p>研究室の多くのノートPCは，Macです．
それに影響されてか，個人で購入するPCもMacが多くなってきました．
そんな新規Macユーザの皆さんに「Macを買ったらこれ入れとけガイド2012年秋」をお届けします．</p>
<p><!-- folding --></p>
<p>開発環境や研究に必要な，ツールは放っておいても分かるでしょうから，
生活を便利にするツールなど．</p>
<h3>Xcode + MacPorts</h3>
<p>homebrew でもいいのかもしれませんが，パッケージの多さなどから，僕は MacPorts派です．</p>
<pre>       # update itself
       sudo port -v selfupdate

       # essentials
       port install zsh-devel +doc +examples +mp_completion
       port install rsync
       port install nkf
       port install git-core +svn
       port install sqlite3
       port install w3m +no_x11
       port install wget

       # pTeX + GS (論文は，これだけで OK)
       sudo port install pTeX +utf8 +no_x11
       sudo port install ghostscript-fonts-hiragino
       sudo port install pdftk --- Error

       # pdftotext が欲しいから xpdf-japanese よりこっち?
       sudo port install poppler poppler-data

       # aspell (Emacs 中から呼ぶスペルチェッカ)
       sudo port install aspell
       sudo port install aspell-dict-en

       # misc (ImageMagick 以外は，意味の分かる人だけ)
       sudo port install hyperestraier
       sudo port install ImageMagick +no_x11
       sudo port install fuse4x sshfs

       # Ruby 関連は，rvm から入れた方がいい</pre>
<h3>操作性向上関係</h3>
<ol>
<li>AquaSKK --ちょっと特殊ですが，ファンの多い日本語入力IMEです．</li>
<li>KeyRemap4MacBook (キーボードリマップ) -- AquaSKK では「かな」や「英数」は，使わないので，Command キーにしています．あと，キーリピートを通常設定できる最高速よりさらに速くしています．</li>
<li>QuickSilver (ランチャ) -- one key でターミナルを起動したりできます．</li>
</ol>
<h3>アプリケーション</h3>
<ol>
<li>VirtualBox -- VM に Linux をインストールしたいときなどに使うかも．</li>
<li>StuffitExpander -- zip を解凍するには，こちらが便利．OS標準の zip 解凍ツールは，Windows で作ったzipのファイル名が文字化けしたりします．</li>
<li>GitX -- Git GUI クライアント <a href='http://gitx.laullon.com/'>http://gitx.laullon.com/</a></li>
</ol>
<h3>有料ソフトウェア</h3>
<ol>
<li>OmniGraffle Pro -- 図を書くのに非常に便利です．僕は，これなしでは図を書く気がしません．</li>
<li>Keynote -- PowerPoint よりこちらが好み．</li>
<li>Pixcelmator -- PhotoShop みたいなの．安価なのにかなりのことができます．</li>
<li>1Password -- パスワード管理ソフト</li>
</ol>
<h3>その他</h3>
<p>Windows でも定番所は，
Emacs, DropBox, Google Drive, Evernote, Firefox, Chrome, Skype, MS Office ぐらいでしょうか．</p>
<h3>標準ソフトウェア</h3>
<p>買ったら付いてくるソフトウェアもかなり強力です．よく使うのは，以下の通り．</p>
<ol>
<li>iTunes</li>
<li>iPhoto</li>
<li>iMovie</li>
<li>ディスクユーティリティ</li>
<li>アクティビティモニタ</li>
<li>ターミナル</li>
</ol>
