# Book Template - AsciiDoc Version

This book serves as a book template. To create a book, just clone this repo and start writing using [AsciiDoc](https://asciidoc.org/). Do note that this template uses Ruby version - [Asciidoctor](https://asciidoctor.org/). 

## Tools

This template just need Ruby, Asciidoctor, and `asciidoctor-pdf`. Do this to install them (you should [install Ruby first](https://www.ruby-lang.org/en/downloads/)):

```
$ gem install --user-install asciidoctor asciidoctor-pdf
```

## Compiling to PDF

Use `Makefile`:

```bash
$ make
```

The result will be in [build](build/) directory.

## Using This Template

### Contents

All contents are in [contents](contents/). You have to sync all those filenames in that directory with `book-title.adoc`. 

### Images

* All images reside in [images](images/). Of course you are free to arrange how to put the images inside, for example you may use `xx` directory where `xx` is *chapter*. For example, if you have image in chapter 01 - named `myImage.png`, then put `myImage.png` inside `ch01` directory inside `images`.
* In Asciidoc document, use this source code:

```asciidoc
[#img-ch01-01]
.Caption of the Image
[link=https://www.onlywhenyouneedto.org]
image::ch01/myImage.png[]
```

* If you want to make a link - *cross reference* which refers to the image:

```asciidoc
... lorem sum dolor lorem sum dolor lorem sum dolor <<#img-ch01-01>> ...
```

### Source Code

* Put source code inside [src](src/). Also, you may manage whatever you like with how you put your source code (or maybe also depends on programming language that you use. for example in Rust you use `src/main.rs` inside a project, or in Java you use `src/main/java/package/App.java`. It's better if you put chapter number like `ch01` for chapter 01.
* In asciidoc, use this source code (example in Rust - `ferris` is project name inside chapter 01):

```
[source,rust]
----
include::../{sourcedir}/ch01/ferris/src/main.rs[]
----
<1> Explanation - callout for number 1
<2> Explanation - callout  for number 2
```

## License

This template has [Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0), however you are free to choose any license for your book.

