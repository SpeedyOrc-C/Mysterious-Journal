#let poem(title, author, body) = {
  align(center, {
    v(9mm)
    par(text(weight: "semibold", size: 14pt, title))
    par(text(size: 8pt, author))
    body
  })
}
