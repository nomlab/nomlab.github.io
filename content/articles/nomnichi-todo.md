+++
title = 'nomnichi 本公開に向けて'
date =  '2008-07-29T18:01:03+09:00'
draft = true
showAuthor = true
authors = ['nom']
+++

<p>順不同にメモしてみました</p>
<p><!-- folding --></p>
<h3>TODO</h3>
<ul>
<li>&lt;pre&gt; タグ内の見た目が悪い</li>
<li>3ペインではなく，2ペインでいい気がする</li>
<li>Hikidoc で箇条書の中に段落を作れないのは不満</li>
<li>「ユーザ毎の記事」は，プルダウンの方がいい</li>
<li>ログインフォームをサイドに常に出す必要はない</li>
<li>URLが変．例えば，以下のようにしたい(要検討)<ul>
<li>トップ /nomnichi (現状 /nomnichi/list が所々出る)</li>
<li>乃村 /nomnichi/user/nom</li>
<li>乃村 2008年12月 /nomnichi/user/nom/200809</li>
<li>全員 2008年12月 /nomnichi/archive/200809</li>
<li>permalink /nomnichi/permalink/article-unique-string</li>
</ul></li>
<li>CSS, テーマの充実</li>
<li>サイドバーに実名がどんどん並ぶのは嫌</li>
<li>RSSが欲しい</li>
<li>Rails と連携できる plugin と InterWiki の構造を検討</li>
<li>Ruby 以外のコード引用字のハイライト</li>
</ul>
<h3>Done</h3>
<ul>
<li>公開/非公開の見分けが付きにくいので CSS などで工夫する</li>
<li>英文と日本語のフォントのバランスが悪い</li>
<li>誰が記事を書いたか分からない</li>
<li>ログインのフォームがダサイ</li>
<li>フォントサイズが全体的にデカい．サイドバー全般や「続きを読む」は，小さく</li>
<li>「乃村研デフォルトアカウント」は長い</li>
<li>「人気の記事」が空なら出さない</li>
<li>Hiki フォーマットで書いたときに，ヘッドラインが整形されていない</li>
<li>写真を貼りたい (hikidoc plugin 対応)</li>
<li>使っている hikidoc ライブラリが古い．ruby forge 方が新版でコードが綺麗</li>
<li>ヘッドラインに誰の記事かはいらない</li>
<li>検索で非公開の記事がひっかかる．</li>
<li>コメント，トラックバックを付けられるようにするか検討</li>
</ul>
<h3>Far away</h3>
<ul>
<li>CMS (Wiki) 的に使いたい<ul>
<li>タグ付けによる分類</li>
<li>常にトップに貼っておきたい記事を指定できる</li>
<li>表現力の拡張<ul>
<li>HikiDoc 以外以外のフォーマット選択できる</li>
<li>LastNote のような自動リンク． &lt;No.XX-XX&gt; や名前など</li>
<li>Google Maps との連携．住所からリンクなど．</li>
<li>Amazon との連携．書籍紹介など．</li>
<li>… アイディア募集中</li>
</ul></li>
</ul></li>
<li>メールとの連携<ul>
<li>ML archive への InterWiki があれば十分?</li>
</ul></li>
<li>iPhone などのスマートフォンに対応</li>
<li>「テーマ」への対応</li>
<li>TinyMCE とかに対応するとかっこよくないか</li>
</ul>
