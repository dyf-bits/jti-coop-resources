//==================
//=== Basic Info ===
//==================
#let department_name = "Electrical and Electronics Skills"
#let skill_name = "Industrial Instrumentation and Control Skills"
#let my_name = "First Middle Last"
#let my_id = 441822345
#let jti_advisor = "Name of Advisor"
#let company_supervisor = "Name of Supervisor"
#let report_date = "5/11/2024"

#let acknowledgements = [
//========================
//=== Acknowledgements ===
//========================

===== Acknowledgements
Here, you write a paragraph to thank people who helped you in your coop training. This help can be in the field of work, report, or in any way that contributed to yourcoop training program.
#pagebreak()

//============================
//=== Acknowledgements End ===
//============================
]
#let report = [
//====================
//=== Report Start ===
//====================

= INTRODUCTION

In this section you should state the reasons to do your coop program, where you have done it, the importance of the skills gained in the coop training, and the purpose of writing the report, etc...
#pagebreak()

= COMPANY PROFILE

In this section you should write a brief description about the company.
#pagebreak()

= DETAILS OF TRAINING EXPERIENCE AND SKILLS ACQUIRED

== Nature of Work

In this section you should describe the work environment, how you started your coop, and what you have learned from the coop training.

== Safety Procedures

In this section you will describe safety procedures which you practiced and learned during the coop training program.

== Skills Learned

In this section you will state the most important skills you have learned from your coop training.

=== Name of Skill 1 

Skill 1 description

=== Name of Skill 2

Skill 2 description

=== Name of Skill 3

Skill 3 description
#pagebreak()

= CONCLUSION

In this section you will briefly state the outcomes of your cooperative training experience.
#pagebreak()

= WEEKLY REPORTS

#pagebreak()

= REFERENCES

In this section you will write a list of references that you have used in writing the report. If you have taken any information from other publications, then you should list the titles of these publications as references with page numbers where the information was taken from. Also this list can include titles of CD, DVD, web addresses, catalogue number, etc…
//==================
//=== Report End ===
//==================
]

// == formatting ==
#set line(stroke: 0.5pt)
#set heading(numbering: "1.1:")

#show heading.where(level:1):it => [
  Section #counter(heading).display("1.1"): #it.body]
#show heading.where(level:1): set text(
  18pt, fill: blue, font: "Calibri", weight: "regular")
#show heading.where(level:1): set heading(supplement: "Section")

#show heading.where(level:2): set text(
  16pt, fill: blue, font: "Calibri", weight: "regular")
#show heading.where(level:2): set heading(numbering: "1.1.")

#let skillCounter = counter("null")
#skillCounter.update(1)
#show heading.where(level:3):it => [#skillCounter.step();
  Skill #skillCounter.display("1"): #it.body]
#show heading.where(level:3): set text(
  15pt, fill: rgb("#1f4d78"), font: "Calibri", weight: "regular")
#show heading.where(level:3): set heading(supplement: "Skill")

#set page(
  paper: "us-letter",
  margin: 2cm,
)
#show heading.where(level:5):it => [#align(center)[#text(20pt, it.body)]]

#set text(size: 14pt)

//==================
//=== Cover Page ===
//==================
#set align(center)
#set text(font:"Calibri")
#v(2em)

#figure(image("../img/jti_logo.png", width: 20%))
*JUBAIL TECHNICAL INSTITUTE* #parbreak()
*Department of #department_name*
#v(3.2em)

#rect(inset: 0.2em, width: 45%,
  [#rect(width: 99.9%, stroke: 3pt, inset: 0.6em,
    [*COOP TRAINING PROGRAM*\
    *STUDENT REPORT*]
)])
#v(2.5em)

*#skill_name*
#v(3.5em)

Prepared by: #parbreak()
*#my_name*\
*#my_id*
#v(5em)

Submitted to: #parbreak()
*#jti_advisor*
#v(7em)

#set align(right)
Date: #report_date
#pagebreak()
#context counter(page).update(1)
#set page(numbering: "i")
//==================
//=== Signatures ===
//==================
#set align(left)
*Submitted by:* #parbreak()
#table(
  align: center,
  stroke: (x,y) => if y == 0 {(bottom:0.5pt + black)},
  column-gutter: 5%,
  row-gutter: 1%,
  columns: (40%,30%,20%),
  [#set align(left);#my_name],[],[],
  [Trainee],[Signature],[Date],
)
#v(2em)

*Checked by:* #parbreak()
#table(
  align: center,
  stroke: (x,y) => if y == 0 {(bottom:0.5pt + black)},
  column-gutter: 5%,
  row-gutter: 1%,
  columns: (40%,30%,20%),
  [#set align(left);#company_supervisor],[],[],
  [Company Supervisor],[Signature],[Date],
)
#v(2em)

*Accepted by:* #parbreak()
#table(
  align: center,
  stroke: (x,y) => if y == 0 {(bottom:0.5pt + black)},
  column-gutter: 5%,
  row-gutter: 1%,
  columns: (40%,30%,20%),
  [#set align(left);#jti_advisor],[],[],
  [Advisor],[Signature],[Date],
)
#pagebreak()
#set text(font:"Libertinus serif")

//== acknowledgements
#acknowledgements

//=========================
//=== Table of Contents ===
//=========================
===== Contents
#v(1em)

#show outline.entry.where(level: 1): it => {
  v(11pt, weak: true)
  link(it.element.location())[
    #it.element.supplement #it.body
    #box(width: 1fr, repeat[~~.])
    #it.page
  ]
}

#let i = counter("i")
#show outline.entry.where(level: 3): it => {
  link(it.element.location())[
    #it.element.supplement
    #context i.step()
    #context i.display():
    #it.element.body
    #box(width: 1fr, repeat[~~.])
    #it.page
  ]
} 

#outline(title: none, indent: true, depth: 3, fill: repeat([~~.]))

#pagebreak()
#context counter(page).update(1)
#set page(numbering: "1")

// == report ==
#report


