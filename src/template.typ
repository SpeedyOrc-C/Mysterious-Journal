#let content-font(it) = {
  show: set text(font: "Charis")
  show strong: set text(weight: "bold")
  show raw: set text(font: ("Menlo", "HYRunYuan-45W"))

  show text.where(lang: "zh"): set text(font: (
    (name: "Charis", covers: "latin-in-cjk"),
    "HYRunYuan-45W",
  ))
  show text.where(lang: "zh", weight: "semibold"): set text(font: (
    (name: "Charis", covers: "latin-in-cjk"),
    "HYRunYuan-65W",
  ))
  show text.where(lang: "zh", weight: "bold"): set text(font: (
    (name: "Charis", covers: "latin-in-cjk"),
    "HYRunYuan-75W",
  ))
  show text.where(lang: "ja"): set text(
    font: (
      (name: "Charis", covers: "latin-in-cjk"),
      "Source Han Serif",
    ),
  )

  it
}

#let content-style(it) = {
  import "@preview/equate:0.3.2": equate

  show: equate.with(breakable: true, sub-numbering: true)
  show: content-font

  set math.equation(numbering: "(1.1)")
  set heading(numbering: "1ai.")
  set page(paper: "a5", margin: 10mm, numbering: "1")
  set raw(tab-size: 4)

  show: set text(size: 9.5pt)
  show heading.where(level: 1): it => {
    set text(size: 22pt)
    align(center, it)
  }
  show heading.where(level: 2): it => {
    set text(size: 15pt, weight: "regular")
    it
    v(-12pt)
    line(length: 100%, stroke: (paint: black, dash: "dotted"))
  }
  show heading.where(level: 3): it => {
    set text(size: 12pt, weight: "semibold")
    it
  }

  it
}

#let answer-style(it) = {
  show: content-font

  set page(paper: "a5", margin: 10mm, numbering: "1")
  set raw(tab-size: 4)

  set page(
    footer: context {
      set align(center)
      set text(size: 9.5pt)
      counter(page).display("1")
    },
  )

  show: set text(size: 7pt)
  show heading.where(level: 1): it => {
    set text(size: 18pt)
    align(center, it)
    v(8pt)
  }
  show heading.where(level: 2): it => {
    set text(size: 13pt, weight: "regular")
    it
    v(-9pt)
    line(length: 100%, stroke: (paint: black, dash: "dotted"))
  }
  show heading.where(level: 3): it => {
    set text(size: 10pt, weight: "semibold")
    it
  }

  it
}

#let weaver-cover-figure = {
  let special-line = {
    let width = 70mm
    let height-p = 0.03
    let arrow-width-p = 0.17
    let spike-p = 0.8

    let height = width * height-p
    let arrow-width = width * arrow-width-p
    let spike = arrow-width * spike-p

    polygon(
      fill: black,
      stroke: 0.2mm,
      (0mm, height / 2),
      (spike, 0mm),
      (arrow-width, height / 2),
      (width - arrow-width, height / 2),
      (width - spike, 0mm),
      (width, height / 2),
      (width - spike, height),
      (width - arrow-width, height / 2),
      (arrow-width, height / 2),
      (spike, height),
    )
  }

  let right-figure = {
    let width = 55mm
    let height = 20mm
    let inset = 3mm
    let edge = 10mm

    box(width: width, height: height, {
      place(polygon(
        fill: silver,
        (0mm, 0mm),
        (width - edge, 0mm),
        (width, edge),
        (width, height),
        (edge, height),
        (0mm, height - edge),
      ))

      place(polygon(
        fill: none,
        stroke: 0.3mm,
        (inset, inset),
        (width - inset, inset),
        (width - inset, height - inset),
        (inset, height - inset),
      ))

      place(dx: 8mm, dy: 6.5mm, text(font: "Inter", [by Pure Science and]))
      place(dx: 13mm, dy: 11mm, text(font: "Inter", [Literature Association]))
    })
  }

  let weaver = {
    align(center, text(
      font: "Niagara Solid",
      size: 22mm,
      "WEAVER",
    ))
  }

  let knowledge-thing = align(center, text(font: "Inter", size: 2mm, [
    You think, therefore you make.
  ]))

  let left-figure = grid(
    rows: (auto, auto, auto),
    row-gutter: 3mm,
    weaver,
    special-line,
    knowledge-thing,
  )

  grid(
    columns: (auto, auto),
    left-figure,
    {
      v(2mm)
      right-figure
    },
  )
}

#let cover(volume, editors) = [
  #weaver-cover-figure
  #set text(lang: "zh")
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1cm,
    outline(depth: 2),
    [
      #align(center, text(size: 14pt, [编辑]))
      #editors
      感谢参与编辑与阅读的各位！

      #v(10mm)

      #align(center, text(size: 14pt, [关于]))
      #link("https://github.com/SpeedyOrc-C/Mysterious-Journal")[*本周刊的源码*]#footnote("https://github.com/SpeedyOrc-C/Mysterious-Journal")是公开的。\
      如果发现任何错误，请#link("https://github.com/SpeedyOrc-C/Mysterious-Journal/issues")[*提交工单*]#footnote("https://github.com/SpeedyOrc-C/Mysterious-Journal/issues")。\
      也可以通过#link("mailto:chenzhanming04@foxmail.com")[*邮箱联系排版负责人*]#footnote("chenzhanming04@foxmail.com")。

      期数：#volume\
      编译日期：#datetime.today().display()\
      编译器：#link("https://typst.app")[Typst] #sys.version
    ],
  )
]
