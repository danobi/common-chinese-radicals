# Common Chinese Radicals

A nicely typeset table of  common radicals in Chinese characters, where all
radicals and example characters are hyperlinked to https://archchinese.com.

The latest PDF can be [found here][0].

# Building

The build is only tested on arch linux, where the following packages are
required:

* `texlive-most`
* `texlive-langchinese`
* `noto-fonts-cjk`
* `noto-fonts`

Then run `make` and `radicals.pdf` should be generated.

# Notes

If the table header typesetting is off, you may need to `touch radicals.tex && make`
to reset the `longtable`. My guess is the `longtable` package doesn't know what the
columns widths should be until the entire table has been processed at least once.

# Credits/License

This repository is forked from https://github.com/saigyo/common-chinese-radicals.

Under the original license, this repository is also CC-BY-SA.


[0]: https://github.com/danobi/common-chinese-radicals/releases/latest/download/radicals.pdf
