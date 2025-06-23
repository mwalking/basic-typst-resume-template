#import "macros.typ": *
#import "config/config-data-scientist.typ": *

#resume(
  author: author,
  author-position: left,
  personal-info-position: left,
  location: location,
  email: email,
  phone: phone,
  accent-color: accent-color,
)[
  
  #include "sections/work.typ"
  #include "sections/education.typ"
  #include "sections/skills.typ"
  #pagebreak()
  #include "sections/publications.typ"
  #include "sections/presentations.typ"
]