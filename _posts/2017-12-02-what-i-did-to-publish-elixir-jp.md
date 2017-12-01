---
layout: post
title:  Elixir公式サイトの日本語サイトを立ち上げるためにやったこと
date:   2017-12-02 00:00:00 +0900
author: deraru
categories:
    - tech
tags:
    - Elixir
---

[Elixir公式サイト](https://elixir-lang.org) の [日本語サイト](http://elixir-lang.jp) を作りました。Elixirの日本語の情報が増えて、日本でもますますElixirの人気が高まって欲しいと願っています！

翻訳作業は [elixir-lang-jp/elixir-lang.github.com: Website for Elixir](https://github.com/elixir-lang-jp/elixir-lang.github.com) でやっております。ぜひ皆さんのお力を貸してください！

# 背景

弊社の新サービス用のAPIをElixirで書こう！となったのはよかったものの、Elixirについて調べてもほぼ英語の情報ばかり。

一方で、今年の4月に開催された Elixir Conf Japan 2017 では、その発表内容や参加者の多さから、日本におけるElixirへの注目度は高まっていることを実感しました。

もっと多くの日本の開発者にElixirという言語を知ってもらい触れてもらうためにも、日本語でのElixirの情報発信が必要で、そこに対して何か貢献できることはないかと思ったことが、公式サイトの日本語化の動機になりました。

# 調査

## 公式サイトの見解

もしかしたらすでに公式サイトに多言語化の仕組みはあって、翻訳者が足りないだけなのではないか？と思い、まずは公式サイトの多言語化の方針を調べました。そこで見つけたIssueがこちら。

[Is there a plan to support other languages for this website · Issue #790 · elixir-lang/elixir-lang.github.com](https://github.com/elixir-lang/elixir-lang.github.com/issues/790)

そこに Jose さんのコメントがありました。

> We don't plan to host different languages ourselves but you can translate the content as long as you keep the proper copyright notices. :)

公式サイト側で多言語化をする予定はないから、コピーライトを残してくれれば好きに翻訳していいよ、とのこと！心置きなく日本語化を進めることにしました。

## 現日本語サイトの調査

Joseさんのコメントをうけて、既に公式サイトの日本語化に取り組んでいる方がいないかを調べました。

するとすぐに日本語サイトが見つかったのですが、バージョンの追随までは手が回っておらず、またプライベートな環境で構築されており、私の方でできることが限られているという状況にあることが分かりました。

## Github上のElixir日本語コミュニティーの調査

前述のIssueは中国のコミュニティが公式サイトの中国語翻訳を行いたいという内容のIssueで、中国のElixirのGithub Organization [elixir-cn](https://github.com/elixir-cn) もそこで紹介されていました。

日本語サイトも、日本のElixirのGithub Organizationのようなものでホストしたいなと考え、こちらも既にそのようなGithub Organizationがないかどうか調べました。

するとまさに希望するGithub Organizationが既にあることが分かりました。

## ドメインの調査

Elixirの公式サイトの日本語サイトにふさわしいドメインの候補をいくつか考え、その取得状況を調べました。

ドメインについてもGithub Organizationと同じく、第一希望のドメインは取得されており、そこでは英語のElixir公式サイトがホストされている、という状況でした。

# 連絡

現日本語サイト、日本のElixirのGithub Organization、ドメイン、それぞれの所有者を調べ、メールでコンタクトを取ってみました。

何度かメールを送ると、現日本語サイトの所有者、ドメインの所有者から返信をいただけ、Elixir公式サイトの日本語サイト開設に協力していただけることになりました。

日本のElixirのGithub Organizationの所有者の方からは返信をいただけなかったのですが、ドメインの所有者の方に別のGithub Organizationを作っていただいたので、そちらを利用することにしました。

# 翻訳

ドメインの設定とGithubページの雛形まではドメインの所有者の方にやっていただいて、私は翻訳手段の調査と仕組みづくりに着手しました。

Elixir公式サイトはJekyllで出来ており、その翻訳方法はいくつかありましたが、 [Jekyllで複数言語のコンテンツを継続してメンテナンスする方法 - ククログ(2014-04-23)](http://www.clear-code.com/blog/2014/4/23.html) の方法を採用することにしました。

トップページの翻訳をやってみつつ、他の方も翻訳作業ができるよう、 [README](https://github.com/elixir-lang-jp/elixir-lang.github.com#readme) を更新していきました。

# 今後

まだまだ翻訳作業は始まったばかりですが、継続して日本語サイトのメンテナンスをしていきたいと考えています。

しかしながらドキュメントの量がなかなか多いので、ぜひ皆さんのお力を貸していただければと思います。

Elixirの勉強がてら、英語の勉強のついでに、あるいは年末年始の特番の合間に、Elixirの公式サイトを翻訳してみませんか？プルリクエストお待ちしております！
