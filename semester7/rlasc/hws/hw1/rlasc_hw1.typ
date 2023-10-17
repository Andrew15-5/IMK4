#set text(size: 14pt)
#let iter = state("y offset")
#iter.update(0)
#let step = 1.25
#let next = (pos, dx: 0pt, dy: 0pt, body) => {
  locate(loc => {
    let i = iter.at(loc)
    place(pos, dx: dx, dy: i * step * 1em + dy, body)
  })
  iter.update(x => x + step)
}
#let current = (pos, dx: 0pt, dy: 0pt, body) => {
  locate(loc => {
    let i = iter.at(loc)
    place(pos, dx: dx, dy: i * step * 1em + dy, body)
  })
}
#let document(width: 0em, height: 0em, paper, list) = table(
  stroke: none,
  inset: 0pt,
  columns: 3,
  rect(width: width, height: height, {
    iter.update(0)
    paper
  }),
  h(1em),
  list,
)

Написать документы следующих видов:
- заявление
  #document(width: 7em, height: 10em, {
    next(top + right)[1]
    next(top + right)[2]
    next(top + center)[3]
    next(top + left)[Прошу Вас ...]
    next(top + right, dx: -1em)[5]
    current(top + left)[5]
    current(top + center)[(6)]
    current(top + right)[6]
  }, [
    + кому? (адресат)
    + от кого? (адреса#underline[н]т)
    + название документа
    + текст
    + дата
    + подпись
  ])
- доверенность
  #document(width: 7em, height: 10.5em, {
    next(top + center)[1]
    next(top + center)[Я, ФИО,]
    next(top + left)[п/д ...]
    next(top + left)[доверяю ФИО]
    next(top + left)[п/д ...]
    current(top + right, line(length: 100%))
    current(top + left, dx: +0.7em, dy: 0.2em)[3]
    current(top + right, dx: -0.7em, dy: 0.2em)[4]
    next(top + left)[]
    current(top + left, line(length: 30%))
    current(top + center, dy: -0.3em)[5]
    current(top + right, line(length: 30%))
  }, [
    + название
    + текст
    + дата
    + подпись
    + нотариус!
  ])
- автобиография
  #document(width: 5em, height: 7em, {
    next(top + center)[1]
    next(top + center)[Я, ФИО,]
    current(top + left, dx: 1em)[3]
    current(top + right, dx: -1em)[4]
  }, [
    + название
    + текст
    + дата
    + подпись
  ])
