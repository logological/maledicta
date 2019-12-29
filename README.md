Maledicta article index
=======================

This repository contains an article index for _Maledicta: The
International Journal of Verbal Aggression_ (ISSN: 0363-3659).

The index covers all main-matter textual articles from every volume
and issue of the journal.  Not included are cartoons and illustrations
(even if they were listed in the original tables of contents) and most
back-matter items, with the exception of bibliographies.

The index provides the following data for each article:

* Title
* Author
* Starting page
* Page range
* Volume
* Number
* Year
* Season
* ISBN
* ISSN
* Journal title

Not included are subject keywords.  (The
_[MLA International Bibliography](https://www.mla.org/Publications/MLA-International-Bibliography)_
does contain a subject keyword index to _Maledicta_, though that index
is proprietary and the coverage is very poor: only about half of the
issues are indexed, and within each issue several articles are
missing.)


Using the index
---------------

The index is provided as
a
[tab-delimited](https://en.wikipedia.org/wiki/Tab-separated_values) [UTF-8–encoded](https://tools.ietf.org/html/rfc3629) text
file.  The individual fields are marked up
with [LaTeX](https://www.latex-project.org/) formatting codes.

Included in this repository is
a [Gawk](https://www.gnu.org/software/gawk/) script that can be used
to convert the index to various other formats:

* Plain TSV: A UTF-8–encoded tab-separated value file with the TeX
  markup stripped out.
* BibTeX: A [BibTeX](https://www.ctan.org/pkg/bibtex) bibliography
  file. Note that non-ASCII characters are not converted to TeX
  commands, so you should probably use a UTF-8–aware document
  processor such as [XeTeX](http://xetex.sourceforge.net/) and a font
  with the requisite Latin and Greek characters.
  See [`Maledicta_index.tex`](Maledicta_index.tex) for an example.
* HTML: An [HTML](https://whatwg.org/) table.

If you have Gawk installed in `/usr/bin/gawk`, then simply run the script
as `./convert_index.gawk` and it will show usage instructions.  Otherwise,
you should invoke the script as `/PATH/TO/gawk -f covert_index.gawk`,
substituting `/PATH/TO/` with your actual path to Gawk, or eliminating it
entirely if Gawk is already in your command path.

Alternatively, you can use the included `Makefile` to generate all
formats and a PDF index.


Copyright and licensing
-----------------------

The Gawk conversion script is released under the terms of
the
[GNU General Public License (version 3 or later)](https://www.gnu.org/licenses/gpl-3.0.html).

To the extent that the article index itself is copyrightable, the
following applies:

Copyright 2019 [Tristan Miller](https://logological.org/).  Licensed
under
a
[Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
