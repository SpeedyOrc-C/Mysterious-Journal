#let templateStyle(it) = {
  import "@preview/equate:0.3.2": equate

  show: equate.with(breakable: true, sub-numbering: true)
  set math.equation(numbering: "(1.1)")

  set page(paper: "a5", margin: 10mm)
  set text(font: ("Charis", "HYRunYuan-45W"), size: 10pt, lang: "zh", region: "cn")
  show text.where(weight: "bold"): set text(font: ("Charis", "HYRunYuan-65W"))
  show strong: set text(font: ("Charis", "HYRunYuan-65W"), fill: maroon)
  show raw: set text(font: ("Menlo", "HYRunYuan-45W"), fill: maroon)

  show heading.where(level: 1): set text(size: 24pt)
  show heading.where(level: 2): it => {
    set text(size: 19pt)
    it
    v(-14pt)
    line(length: 100%, stroke: (paint: black, dash: "dotted"))
  }
  show heading.where(level: 3): it => {
    set text(size: 14pt)
    it
  }

  it
}
