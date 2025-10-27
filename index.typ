#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}


#show: ilm.with(
 title: [Теория вероятностей],
  author: 
    "Панков Василий <pank-su>",
  author-format: (author) => [
    #stack(dir: ltr)[#block(
        image("src/images/000_avatar.png", width: 3em, height: 3em),
        radius: 50%,
        clip: true,
      )][#h(1em)][#text(author, size: 1.6em)]
  ],
  date: datetime.today(),
  abstract: [По лекциям Бутениной],
  table-of-contents: outline(depth: 2),
  external-link-circle: false
)

#include "src/000_введение.typ"
#include "src/001_классическая_вероятность.typ"
#include "src/001_элементы_комбиноторики_правила_суммы_и_умножения.typ"
#include "src/002_бернулли.typ"
#include "src/003_формула_полной_вероятности.typ"
#include "src/004_случайные_величины.typ"
#include "src/005_числовые_хар_случ_вел.typ"


/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/


#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Приложение " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

