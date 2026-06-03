
// typst-show.typ

#show: js.with(
  $if(lang)$
  lang: "$lang$",
  $endif$
  $if(seriffont)$
  seriffont: "$seriffont$",
  $endif$
  $if(seriffont-cjk)$
  seriffont-cjk: "$seriffont-cjk$",
  $endif$
  $if(sansfont)$
  sansfont: "$sansfont$",
  $endif$
  $if(sansfont-cjk)$
  sansfont-cjk: "$sansfont-cjk$",
  $endif$
  $if(paper)$
  paper: "$paper$",
  $endif$
  $if(fontsize)$
  fontsize: $fontsize$,
  $endif$
  $if(baselineskip)$
  baselineskip: $baselineskip$,
  $endif$
  $if(textwidth)$
  textwidth: $textwidth$,
  $endif$
  $if(lines-per-page)$
  lines-per-page: $lines-per-page$,
  $endif$
  $if(book)$
  book: $book$,
  $endif$
  $if(cols)$
  cols: $cols$,
  $endif$
  $if(non-cjk)$
  non-cjk: $non-cjk$,
  $endif$
  $if(cjkheight)$
  cjkheight: $cjkheight$,
  $endif$
)

#show: doc => {
  set document(
    title: $if(title)$ [$title$] $else$ [] $endif$,
    author: $if(author)$ (
      $for(author)$
        "$author$"
        $sep$, $endfor$
    ) $else$ () $endif$,
    date: $if(date)$ parse_date("$date$") $else$ datetime.today() $endif$,
    description: $if(abstract)$ [$abstract$] $else$ [] $endif$,
    keywords: $if(keywords)$
      ($for(keywords)$ "$it$"$sep$, $endfor$)
    $else$ () $endif$
    )
  doc
}
