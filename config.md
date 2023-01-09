<!--
Add here global page variables to use throughout your website.
-->
+++
author = "GMT.jl"
mintoclevel = 2
frontpage = false
auto_code_path = true

prepath = "GMTjl_doc"

# Add here files or directories that should be ignored by Xranklin, otherwise
# these files might be copied and, if markdown, processed by Xranklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/", "misc/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "Xranklin Template"
website_descr = "Example website using Xranklin"
prepath = get(ENV, "PREVIEW_XRANKLIN_PREPATH", "")
website_url = get(ENV, "PREVIEW_XRANKLIN_WEBSITE_URL", "fct-gmt.ualg.pt")
prepath = "GMTjl_doc"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}

<!-- myreflink{Basic Tutorial} expands to [Basic Tutorial](link_to_that) -->
\newcommand{\myreflink}[1]{[!#1](\reflink{!#1})}

\newcommand{\figenv}[3]{
~~~
<figure style="text-align:center;">
<img src="!#2" style="padding:0;#3" alt="#1"/>
<figcaption>#1</figcaption>
</figure>
~~~
}

\newcommand{\apilink}[1]{[`!#1`](/api/#!#1)}
