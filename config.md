<!--
Add here global page variables to use throughout your website.
-->
+++
author = "GMT.jl"
mintoclevel = 2
frontpage = false
auto_code_path = true

prepath = "GMTjl_doc"

# no RSS in xranklin yet
generate_rss = false

# this helps with debugging, just remove sections of the site
ignore = [
  "ci/",
  "documentation/",
  "examples/",
  "geophysics/",
  "tutorials/",

  "comp_other_pkgs.md",
  "documentation.md",
  "examples.md",
  "export_md.jl",
  "geophysics.md",
  "makedocs.jl",
  "search.md",
  "tutorials.md",
]
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}

<!-- myreflink{Basic Tutorial} expands to [Basic Tutorial](link_to_that) -->
\newcommand{\myreflink}[1]{[#1](\reflink{#1})}

\newcommand{\figenv}[3]{
~~~
<figure style="text-align:center;">
<img src="#2" style="padding:0;#3" alt="#1"/>
<figcaption>#1</figcaption>
</figure>
~~~
}

\newcommand{\apilink}[1]{[`#1`](/api/##1)}
