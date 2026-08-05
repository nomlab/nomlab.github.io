+++
title = '続きを読むの制御など'
date =  '2009-01-09T21:19:17+09:00'
draft = true
showAuthor = true
authors = ['nom']
+++

<p>暫定的ですが、続きを読むの制御とその他をできるようにしました。</p>
<p><!-- folding --></p>
<p>行頭から</p>
<pre> //...</pre>
<p>という行を単一で書くと、その行以降は一覧のヘッドラインに表示されません。
また、一覧中のヘッドラインもちゃんと HiKiDoc でパーズするように
しました。<a href='http://lastnote.swlab.cs.okayama-u.ac.jp/trac/changeset/634'>trac:634</a></p>
<p>課題：</p>
<ol>
<li>オリジナルの hikidoc.rb に手を入れないで実現しているので、コメントラインとして扱う必要がある。そのため、表記がかっこ悪い。</li>
<li>parser.rb で実現しているのは、どうかと思う。</li>
</ol>
<p>また、Ruby プログラムの引用に色が付くようになりました。</p>
<pre>   &lt;&lt;&lt; ruby
     Ruby の プログラム
     ...
   &gt;&gt;&gt;</pre>
<p>とすることで、Syntax Hilight ができます。
以下がその例：</p>
<pre><span class='keyword'>class </span><span class='class'>HelloWorld</span>
  <span class='keyword'>def </span><span class='method'>doit</span>
    <span class='ident'>puts</span> <span class='punct'>&quot;</span><span class='string'>hello world!!</span><span class='punct'>&quot;</span>
  <span class='keyword'>end</span>
<span class='keyword'>end</span>

<span class='constant'>HelloWorld</span><span class='punct'>.</span><span class='ident'>new</span><span class='punct'>.</span><span class='ident'>doit</span></pre>
<p>課題：</p>
<ol>
<li>C言語など、その他の言語に広く対応する。</li>
<li>hikidoc.rb を改造して、&lt;pre&gt; タグに class='ruby' が付くようにする。</li>
</ol>
