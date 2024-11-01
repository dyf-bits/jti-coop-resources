//==================
//=== Basic Info ===
//==================
#let week_number = 3
#let date_from = "27/10/2024"
#let date_to = "31/10/2024"
#let my_name = "First Last"
#let my_id = 441822345
#let company_name = "Company"
#let company_supervisor = "Your Supervisor"

#let report_content = [
//=======================
//===  Report Content ===
//=======================

In this week, I continued to gain hands-on experience in various carpentry tasks. My main focus was on assisting the carpenters at the company with a residential renovation project.

= Key Tasks and Activities:

+ Assisted in installing drywall in a renovated room, ensuring proper joint alignment and taping.
+ Helped build a deck for a new home, including cutting and assembling the frame and boards.
+ Participated in a safety meeting, which discussed the importance of proper ladder usage and fall protection.

= Skills and Knowledge Gained:
- Improved my understanding of drywall installation techniques and best practices.
- Developed my deck building skills, including measuring, cutting, and assembling deck components.

= Challenges and Areas for Improvement:
I struggled with accurately measuring and cutting deck boards, resulting in some wasted material. I will focus on improving my measurement skills to minimize waste

//==========================
//=== Report Content End ===
//==========================
]

// == formatting ==
#set line(stroke: 0.5pt)

#set page(
  paper: "us-letter",
  margin: (top: 1.7cm, bottom: 1.7cm, left: 2cm, right: 2cm),
  foreground: [
    #place(dx: 5%, dy: 3.85%,
      rect(radius: 0cm, width: 90%+0.1cm, height: 92.3%+0.1cm))
    #place(dx: 5%+0.05cm, dy: 3.85%+0.05cm,
      rect(radius: 0cm, width: 90%, height: 92.3%))
  ]
)

#show heading.where(level:1): set text(11pt)
#show heading.where(level:2): set text(11pt, style: "italic")
#let title(content) = align(center, text(
  16pt, weight:"bold", underline(content)))
#set text(size: 13pt)
#set align(center)
#set text(font:"Noto Sans")
#set rect(inset: 1.5em, width: 100%, height: 6%,stroke: 0.5pt, radius:0.3cm)
#set list(indent: 1em)
#set enum(indent: 1em)

// == document start ==
#grid(
  columns: (20%, 60%, 20%),
  align: (left, center, right),
  [#figure(image("../img/jti_logo.png", width:100%))],
  [#title[WEEKLY REPORT]\WEEK No. ( #week_number )],
  [],
)
#v(-1em)
#set text(10pt)

#rect(
  align(left + horizon, table(
    columns: (15%, 37%, 7%, 37%),
    rows: 1em,
    align: left,
    stroke: (x,y) => if calc.odd(x) {(bottom:0.5pt + black)},
    [Date From:], [#date_from], [To:], [#date_to]
  ))
)
#v(-0.8em)

#rect(inset: 0.5em,
  [#align(center + horizon, table(
    columns: (19%, 32%, 10%, 32%),
    rows: 1em,
    align: left,
    stroke: (x,y) => if calc.odd(x) {(bottom:0.5pt + black)},
    [STUDENT NAME:], [#my_name], [ID. NO:], [#my_id],

    ))
  #v(-0.5em)
  #align(center + horizon, table(
    columns: (36%, 57%),
    rows: 1em,
    align: left,
    stroke: (x,y) => if x==1 {(bottom:0.5pt + black)},
    [NAME OF THE COMPANY FOR OJT:], [#company_name]))]
)
#v(-0.3em)
#set align(left)

The Work Performed This Week:
#v(-0.5em)
#rect(height: 42.5%, report_content)

#set align(left)
#v(-0.3em)

Training Supervisor's Assessment of the Student's Performance This Week: 
#v(-0.5em)
#rect(inset: 0.3em, height: 8%,
  align(center + horizon, table(
    stroke:none,
    columns: (20%, 20%, 20%, 20%, 20%),
    rows: (1.1em, 2em, 2.1em),
    align: center,
    [Excellent], [Very Good], [Good], [Satisfactory], [Not Satisfactory],
    [#text(32pt)[#sym.square]], [#text(32pt)[#sym.square]], [#text(32pt)[#sym.square]],
    [#text(32pt)[#sym.square]], [#text(32pt)[#sym.square]],
    [\[90-100%\]], [\[80-89%\]], [\[70-79%\]], [\[60-69%\]], [\[Less than 60%\]], 
)))
#v(-0.3em)

Any other comments:
#v(-0.5em)
#rect(inset: 0.3em, height: 9%,
  align(center + horizon,
  [#v(1.5em)#line(length: 95%)
  #v(1.2em)
  #line(length: 95%)]
))
#v(-0.5em)
#rect(inset: 0.5em, height: 8%,
  align(left + horizon, table(
    columns: (21%, 25%, 12%, 18%, 7%, 16%),
    rows: 1.2em,
    align: left,
    stroke: (x,y) => if calc.odd(x) {(bottom:0.5pt + black)},
    [Supervisor's Name:], [#company_supervisor], [Signature:], [], [Date:], []
  ))
)
