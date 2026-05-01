#let template-style(it) = {
  import "@preview/equate:0.3.2": equate

  show: equate.with(breakable: true, sub-numbering: true)
  set math.equation(numbering: "(1.1)")
  set heading(numbering: "1ai.")
  set page(paper: "a5", margin: 10mm, numbering: "1")
  set text(font: ("Charis", "HYRunYuan-45W"), size: 9.5pt, lang: "zh", region: "cn")
  set raw(tab-size: 4)

  show text.where(weight: "bold"): set text(font: ("Charis", "HYRunYuan-65W"))
  show strong: set text(font: ("Charis", "HYRunYuan-65W"), fill: maroon)
  show raw: set text(font: ("Menlo", "HYRunYuan-45W"), fill: maroon)

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
    set text(size: 12pt)
    it
  }

  show regex("·"): it => {
    set text(font: "HYRunYuan-45W")
    show strong: set text(font: "HYRunYuan-75W")
    show text.where(weight: "bold"): set text(font: "HYRunYuan-75W")
    it
  }

  it
}

#let purifier-cover-figure = {
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

  let purifier = {
    align(center, text(
      font: "Niagara Solid",
      size: 22mm,
      "PURIFIER",
    ))
  }

  // 这句话看着有点尬，感觉还是删掉算了……
  let knowledge-thing = align(center, text(font: "Inter", size: 2mm, [
    Knowledge is the only justice. Ignorance is the only evil.
  ]))

  let left-figure = grid(
    rows: (auto, auto, auto),
    row-gutter: 4mm,
    purifier,
    special-line,
    knowledge-thing,
  )

  grid(
    columns: (auto, auto),
    left-figure, {v(2mm); right-figure},
  )
}
