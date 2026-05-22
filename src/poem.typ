#let poem(title, author, body) = {
  align(center, {
    v(9mm)
    par(text(weight: "semibold", size: 14pt, title))
    par(text(size: 8pt, author))
    body
  })
}

#let poem-en(title, author, body) = {
  align(center, box({
    {
      show text: it => text(font: "Snell Roundhand", size: 24pt, it)
      title
    }
    v(-6mm)
    align(left, body)
    align(right, author)
  }))
}
