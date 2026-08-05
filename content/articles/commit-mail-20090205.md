+++
title = 'commit mail の文字化け'
date =  '2009-02-05T17:44:38+09:00'
draft = false
showAuthor = true
authors = ['nom']
+++

<p>みんなも気付いている通り，LastNote の commit mail の
Subject がどうも文字化けして，ずっと気になっていました．
<!-- folding -->
そのうち誰かが直すだろうと，放っておいたのですが，
今朝，U君の論文を読んだ後に珈琲を飲みながら
どうしても我慢ならなくなって，ちょっと見てみました．</p>
<p>/var/svn/lastnote/hook/commit-email.rb の
make_subject 中という，それらしい名前の関数．</p>
<pre><span class='keyword'>def </span><span class='method'>make_subject</span><span class='punct'>(</span><span class='ident'>name</span><span class='punct'>,</span> <span class='ident'>info</span><span class='punct'>,</span> <span class='ident'>params</span><span class='punct'>)</span>
  <span class='ident'>subject</span> <span class='punct'>=</span> <span class='punct'>&quot;</span><span class='string'></span><span class='punct'>&quot;</span>
  <span class='ident'>project</span> <span class='punct'>=</span> <span class='ident'>detect_project</span><span class='punct'>(</span><span class='ident'>info</span><span class='punct'>,</span> <span class='ident'>params</span><span class='punct'>)</span>
  <span class='ident'>subject</span> <span class='punct'>&lt;&lt;</span> <span class='punct'>&quot;</span><span class='string'><span class='expr'>#{name}</span> </span><span class='punct'>&quot;</span> <span class='keyword'>if</span> <span class='ident'>name</span>
  <span class='keyword'>if</span> <span class='ident'>project</span>
    <span class='ident'>subject</span> <span class='punct'>&lt;&lt;</span> <span class='punct'>&quot;</span><span class='string'>[<span class='expr'>#{project}</span> r<span class='expr'>#{info.revision}</span>] </span><span class='punct'>&quot;</span>
  <span class='keyword'>else</span>
    <span class='ident'>subject</span> <span class='punct'>&lt;&lt;</span> <span class='punct'>&quot;</span><span class='string'>r<span class='expr'>#{info.revision}</span>: </span><span class='punct'>&quot;</span>
  <span class='keyword'>end</span>
  <span class='ident'>subject</span> <span class='punct'>&lt;&lt;</span> <span class='ident'>info</span><span class='punct'>.</span><span class='ident'>log</span><span class='punct'>.</span><span class='ident'>lstrip</span><span class='punct'>.</span><span class='ident'>to_a</span><span class='punct'>.</span><span class='ident'>first</span><span class='punct'>.</span><span class='ident'>to_s</span><span class='punct'>.</span><span class='ident'>chomp</span>
  <span class='constant'>NKF</span><span class='punct'>.</span><span class='ident'>nkf</span><span class='punct'>(&quot;</span><span class='string'>-WM</span><span class='punct'>&quot;,</span> <span class='ident'>subject</span><span class='punct'>)</span>
<span class='keyword'>end</span></pre>
<p>最後の info.log を加工して NKF (漢字コード変換)
しているところが怪しいのですが，同じことを手元の
PC の irb でやってもうまくいく…．</p>
<p>そういえば，以前，古いRuby + NKF のバグではまったことがあったよね，
というのを思い出して，tsubame の irb で実験．</p>
<p>その結果，どうも，tsubame の Ruby 1.8.5 では，
NKF が壊れているらしく，入力の文字コードが UTF8
だった場合に MIME B encode をすると，
最後の ESC を落としてしまいます．
最後が ASCII で終わる Subject が化けない理由もこれで納得．</p>
<p>ということで，不本意ながら，M17N から L10N にダウングレードして，
EUC を経由するという場当たり的な解決をしました．</p>
<pre>  <span class='comment'>## NKF on Ruby 1.8.5 is broken.</span>
  <span class='comment'>#</span>
  <span class='comment'># if input code is UTF8, -M mistakenly drops</span>
  <span class='comment'># the last ESC code of JIS string.</span>
  <span class='comment'># This is a workaround to avoid the problem. -- nom.</span>
  <span class='comment'>#</span>
  <span class='constant'>NKF</span><span class='punct'>.</span><span class='ident'>nkf</span><span class='punct'>(&quot;</span><span class='string'>-EM</span><span class='punct'>&quot;,</span> <span class='constant'>NKF</span><span class='punct'>.</span><span class='ident'>nkf</span><span class='punct'>(&quot;</span><span class='string'>-We</span><span class='punct'>&quot;,</span> <span class='ident'>subject</span><span class='punct'>))</span>
  <span class='comment'># NKF.nkf(&quot;-WM&quot;, subject)</span></pre>
<p>Ruby 1.8.[56] の頃の NKF は怪しいです．
そろそろ tsubame の Ruby をバージョンアップしましょう．</p>
