# -*- coding: utf-8 -*-

from pkg_resources import get_distribution

import sys

project = 'Notice'
copyright = '2023, iMio'

version = release = "1.0.0"


# The suffix of source filenames.
source_suffix = {
    ".md": "markdown",
    ".rst": "restructuredtext",
}

extensions = [
    'sphinx.ext.doctest',
    'sphinx.ext.coverage',
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.autosummary',
    "myst_parser",
    "sphinx.ext.todo",
]
master_doc = 'index'

locale_dirs = ['translated/']
language = 'fr'

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual])
# This enables PDF generation.
latex_documents = [(
    'index',
    'notice.tex',
    'Notice Documentation',
    '',
    'manual',
)]

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
    'papersize': 'a4paper',

# The font size ('10pt', '11pt' or '12pt').
    'pointsize': '11pt',

# Additional stuff for the LaTeX preamble.
    'preamble': r'''\usepackage{charter}
\usepackage[defaultsans]{lato}
\usepackage{inconsolata}
\hyphenpenalty 10000
\exhyphenpenalty 10000
''',
}

# -- Options for myST markdown conversion to html -----------------------------

myst_enable_extensions = [
    "colon_fence",
    "deflist",
]


# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = "sphinx_book_theme"
html_use_index = True