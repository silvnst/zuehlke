# challenge 4

pdf <- pdftools::pdf_text("challenge_4.pdf")
str_extract_all(pdf, pattern = "[\\dNW'°]")
