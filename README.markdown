# Vim Markdown Extras

by Matthew Lyon <matthew@lyonheart.us>

Support for various markdown extras that enhance your existing markdown syntax.

## Enhance, not replace

While looking for vim syntax support for things like [MultiMarkdown][mmd]
or [CriticMarkup][crit], instead of *enhancements* that augmented an
existing markdown syntax file, I instead found ones that either *replaced*
the existing syntax file or required the use of custom extensions and used
non-standard file types.

If you work with more than one of these extensions or other tools that
require an extension such as `.md` or `.markdown`, those solutions are
unworkable.

Thankfully, vim allows for syntax augmentation through `/syntax/after`.
This plugin is a collection of syntax declarations that work with your
existing markdown syntax to provide highlight groups for non-standard
markdown enhancements.

## Currently Supported

### [MultiMarkdown][mmd]:
  - Syntax Highlighting
    - Tables
    - Footnote Delimiters

### [CriticMarkup][crit], Extensions for Collaboration:
  - Syntax Highlighting
    - Additions
    - Deletions
    - Substitutions
    - Highlights
    - Comments

## Coming Soon
  - [MultiMarkdown][mmd] definition lists, etc
  - Snippets for working with tables, critic Markup
  - functions for workflow with critic markup

[crit]: http://criticmarkup.com/
[mmd]: https://github.com/fletcher/MultiMarkdown

