# Colour Scheme

The colour scheme comes from [Chris Kempson's base16 series][ckbase16] called
[Tomorrow Night][tomnight].

```yaml
---
base00: "1d1f21"
base01: "282a2e"
base02: "373b41"
base03: "969896"
base04: "b4b7b4"
base05: "c5c8c6"
base06: "e0e0e0"
base07: "ffffff"
base08: "cc6666"
base09: "de935f"
base0A: "f0c674"
base0B: "b5bd68"
base0C: "8abeb7"
base0D: "81a2be"
base0E: "b294bb"
base0F: "a3685a"
```

What do the bases mean? I've created this table using the descriptions from the
[base16 project home page][ckbase16].

| Base   | Hex    | Description                                                       |
|--------|--------|-------------------------------------------------------------------|
| base00 | 1d1f21 | Default background                                                |
| base01 | 282a2e | Lighter background (status bars)                                  |
| base02 | 373b41 | Selection background                                              |
| base03 | 969896 | Comments, invisibles, line highlighting                           |
| base04 | b4b7b4 | Dark foreground                                                   |
| base05 | c5c8c6 | Default foreground, caret, delimiters, operators                  |
| base06 | e0e0e0 | Light foreground                                                  |
| base07 | ffffff | Light background                                                  |
| base08 | cc6666 | Variables, XML tags, markup link text, markup lists, diff deleted |
| base09 | de935f | Integers, boolean, constants, XML attributes, markup link URL     |
| base0A | f0c674 | Classes, markup bold, search text background                      |
| base0B | b5bd68 | Strings, inherited class, markup code, diff inserted              |
| base0C | 8abeb7 | Support, regular expressions, escape characters, markup quotes    |
| base0D | 81a2be | Functions, methods, attributes IDs, headings                      |
| base0E | b294bb | Keywords, storage, selector, markup italic, diff changed          |
| base0F | a3685a | Deprecated opening/closing embedded language tags, e.g. <?php ?>  |

[ckbase16]: https://chriskempson.com/projects/base16/
[tomnight]: https://github.com/chriskempson/base16-tomorrow-scheme/blob/master/tomorrow-night.yaml
