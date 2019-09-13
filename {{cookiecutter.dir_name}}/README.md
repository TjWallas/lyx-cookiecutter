## How-to
* Install direnv -- https://github.com/direnv/direnv
* `direnv allow`
* Follow these steps in order to install lyx on your system: https://wiki.lyx.org/LyX/LyXOnUbuntu
    * We are using the stable version of Lyx at the moment -- LyX Version 2.3.3
(Monday, June 10, 2019)
* Run the Paper in lyx and start editing :)

    ```
    lyx Paper.lyx
    ```
* When you are done, you can run `make` to generate the PDF and the .Tex files.

* **DO NOT** edit the .tex file manually. It gets automatically overwritten each commit, and it is auto-generated from the .lyx file. We only edit the .bib, and the .lyx files.
