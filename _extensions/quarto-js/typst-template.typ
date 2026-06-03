
// typst-template.typ

#import "@preview/js:0.1.3": *

#let parse_authors(authors) = authors.map(author => {
  let parts = author.split(",").map(str => str.trim().replace("\\", ""))
  if parts.len() == 3 {
    (array.at(parts, 0), array.at(parts, 1), array.at(parts, 2))
  } else if parts.len() == 2 {
    let second = array.at(parts, 1)
    if second.contains("@") {
      (array.at(parts, 0), "", second)
    } else {
      (array.at(parts, 0), second, "")
    }
  } else {
    (array.at(parts, 0), "", "")
  }
})

#let maketitle_wrapper() = context {
  maketitle(
    title: document.title,
    authors: parse_authors(document.author),
    date: if document.date != none { document.date.display("[year]年[month repr:numerical padding:none]月[day padding:none]日") } else { none },
    abstract: document.description,
    keywords: document.keywords
  )
}

#let parse_date(date) = {
  let tmp = date.split(regex("-"))
  let year = int(tmp.at(0))
  let month = int(tmp.at(1))
  let day = int(tmp.at(2))
  datetime(year: year, month: month, day: day)
}
