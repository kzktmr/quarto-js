# quarto-js

[Typst](https://typst.app/) で日本語文書を組版するための Quarto エクステンションです。LaTeX の jsarticle/jsbook に近いレイアウトを提供します。内部では [`@preview/js`](https://typst.app/universe/package/js) パッケージを使用しています。

## 必要環境

- Quarto 1.7 以上（Typst 組み込み済みのため Typst の別途インストール不要）
- R を使う場合は `svglite` パッケージが必要（`install.packages("svglite")`）

## インストール

```bash
quarto use template kzktmr/quarto-js
```

既存プロジェクトにエクステンションのみ追加する場合：

```bash
quarto add kzktmr/quarto-js
```

## 使い方

YAMLフロントマターで `format: quarto-js-typst` を指定します。

```yaml
---
title: 文書タイトル
author:
  - 氏名, 所属, メールアドレス
  - 氏名, 所属
date: 2025-01-01
abstract: |
  概要文
format:
  quarto-js-typst
---
```

`author` は `氏名, 所属, メールアドレス` の形式でカンマ区切りで記述します。所属やメールアドレスは省略可能です。

## YAMLオプション

| オプション | 説明 | 例 |
|---|---|---|
| `lang` | 言語 | `ja` |
| `paper` | 用紙サイズ | `a4` |
| `fontsize` | 基本フォントサイズ | `10pt` |
| `seriffont` | 欧文セリフフォント | `"Libertinus Serif"` |
| `seriffont-cjk` | 和文セリフフォント | `"Hiragino Mincho ProN"` |
| `sansfont` | 欧文サンセリフフォント | `"Helvetica"` |
| `sansfont-cjk` | 和文サンセリフフォント | `"Hiragino Kaku Gothic ProN"` |
| `cols` | 段組数 | `2` |
| `book` | 書籍レイアウト | `true` |
| `textwidth` | テキスト幅 | `40em` |
| `lines-per-page` | 1ページの行数 | `40` |
| `baselineskip` | 行送り | `16pt` |
| `non-cjk` | 非CJK文字の扱い | |
| `cjkheight` | CJK文字の高さ比率 | |

## ショートコード

| ショートコード | 説明 |
|---|---|
| `{{< latex >}}` | LaTeX ロゴ |
| `{{< tex >}}` | TeX ロゴ |
| `{{< maketitle >}}` | タイトルブロックを出力 |
| `{{< outline >}}` | 目次を出力 |
| `{{< v 1em >}}` | 縦方向スペース |
| `{{< h 1em >}}` | 横方向スペース |
| `{{< kintou 5em テキスト >}}` | 均等割り付け |
| `{{< ruby 漢字 かんじ >}}` | ルビ |

## Div クラス

| クラス | 説明 |
|---|---|
| `{.noindent}` | 段落冒頭の字下げを抑制 |
| `{.quote}` | 引用ブロック |

## ライセンス

MIT
