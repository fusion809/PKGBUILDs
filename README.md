# Arch PKGBUILDs

This repository is composed of PKGBUILDs I have written (or modified from existing packages in the Arch Build Service and Arch User Repository) to help me install packages not in the AUR or pacman repos, or in the case of packages already in either class of repository, these PKGBUILDs have amendments to make them better suit my purposes. The contents of this repository are licensed under GPLv3\. Despite this, you should probably be made aware of the fact that some of the packages these PKGBUILDs are for building are not necessarily FOSS. This repository was set up prior to when I set up my **Open Build Service Arch_Extra Branch** (**OBSAEB**) in March 2016\. Most PKGBUILDs in this repository ended up being moved to this branch. The only exceptions are those that for whatever reason are unsuitable for my OBSAEB.

While this repository is primarily designed to provide me with the packages I want, I am willing to turn it into a community repo with packages that others want too. Merely start a [new issue](https://github.com/fusion809/PKGBUILDs/issues/new) or file a pull request, if you want a new package added or have modification suggests for existing packages. I am even willing to add suitable packages to my OBSAEB. Despite this, I have written an [article](https://fusion809.github.io/package-development), in [*The Hornery*](https://fusion809.github.io) about how you can set up your own OBS Project and write PKGBUILDs.

## Table of Contents

- [List of Packages](#list-of-packages)

  - [Integrated Development Environments / Text Editors](#integrated-development-environments&mdash;text-editors)

- [atom-editor](#atom-editor)

  - [-beta](#-beta)
  - [-git](#-git)
  - [-sync](#-sync)

- [brackets](#brackets)

- [codebox](#codebox)

- [komodo-edit/lighttable/sublime-text{,-dev}](#komodo-edit&mdash;lighttable&mdash;sublime-text-dev)

- [linux-ck](#linux-ck)

- [messengerfordesktop](#messengerfordesktop)

- [shadow-icon-theme-git](#shadow-icon-theme-git)

- [textadept](#textadept)

- [Vim](#vim)

- [visual-studio-code](#visual-studio-code)

  - [-git](#visual-studio-code-git)
  - [-oss](#visual-studio-code-oss)

&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;

## List of Packages

The list of separate packages in this repository includes:

### Integrated Development Environments / Text Editors

- [atom-editor](/atom-editor/)

  - [-beta](/atom-editor-beta/)
  - [-git](/atom-editor-git/)
  - [-sync](/atom-editor-sync/)

- [brackets](/brackets/)

- [codebox](/codebox/)

- [gvim](/gvim/)

  - [-git](/gvim-git/)
  - [-gtk3](/gvim-gtk3/)

- [komodo-edit](/komodo-edit/)

- [lighttable](/lighttable/)

- [sublime-text](/sublime-text/)

  - [-dev](/sublime-text-dev/)

- [textadept](/textadept/)

- [visual-studio-code](/visual-studio-code/)

  - [-git](/visual-studio-code-git/)
  - [-oss](/visual-studio-code-oss/)

## [atom-editor](/atom-editor/)
**Note:** <sup>M</sup> *superscript indicates packages/themes I created (worthwhile mentioning to date, however, none of my packages are original, rather they are all forks).*

All PKGBUILDs with the `atom-editor` in their `$pkgname`, in this repository, build the Atom text editor from source and are designed to be installable simultaneously to one another, except for `atom-editor` and other stable `atom-editor` builds like `atom-editor-fusion`, `atom-editor-nuclide` and `atom-editor-sync`. If you noticed that previously `atom-editor-git` and the deprecated (and removed) package `atom-editor-dev` would launch `atom-editor`, instead of the respective version of Atom they should have, this has since been fixed on 27 May 2016 (AEST). They are also designed (as opposed to the corresponding PKGBUILDs in the AUR) to persevere in their build, in the case of momentary internet glitches. All these packages also have the following non-default packages installed:

- [`about-arch`](https://atom.io/packages/about-arch)<sup>M</sup> &mdash; which is provided **instead** of the default package, [`about`](https://atom.io/packages/about), as it is more applicable to my builds of Atom on Arch Linux.
- [`language-gfm2`](https://atom.io/packages/language-gfm2)<sup>M</sup> &mdash; which is provided **instead** of the default package [`language-gfm`](https://atom.io/packages/language-gfm) package, as it includes support for Liquid and HTML code (provided `language-liquid` is installed) embedded in markdown files.
- [`language-liquid`](https://atom.io/packages/language-liquid) &mdash; to, along with the `language-gfm2` package, provide syntax-highlighting support for HTML and Liquid code embedded in markdown files.

stable builds also have the latest version of the [`language-shellscript`](https://atom.io/packages/language-shellscript) package installed (0.22.3 as opposed to the default 0.21.0). and the following packages deliberately removed (both for privacy concerns):

- [`exception-reporting`](https://atom.io/packages/exception-reporting)
- [`metrics`](https://atom.io/packages/metrics)

### [-beta](/atom-editor-beta/)

The `atom-editor-beta` package, unlike that in the AUR, should also persevere despite intermittent network connectivity issues and **can** be installed alongside `atom-editor` on the same machine. These two packages require Internet access during their build, so I cannot add them to my OBSAEB.

### [-fusion](/atom-editor-fusion/)

The `atom-editor-fusion` package has my preferred set of packages and themes pre-installed. The extra pre-installed themes include:

- [`dark-bint-syntax`](https://atom.io/themes/dark-bint-syntax)
- [`fusion-ui`](https://atom.io/themes/fusion-ui)<sup>M</sup> &mdash; my custom theme.

while the extra pre-installed packages include:

- [`file-icons`](https://atom.io/packages/file-icons) &mdash; a package that provides assigns icons to files in the tree view, according to their file type.
- [`language-ini2`](https://atom.io/packages/language-ini2)<sup>M</sup> &mdash; my own fork of the [`language-ini`](https://atom.io/packages/language-ini) package with better syntax-highlighting of desktop configuration files.

### [-git](/atom-editor-git/)

The `atom-editor-git` package, uses a different package version than that in the AUR.

### [-nuclide](/atom-editor-nuclide/)

The `atom-editor-nuclide` PKGBUILD builds Atom with the `nuclide` package (which is developed by Facebook to facilitate web development) pre-installed.

### [-sync](/atom-editor-sync/)

`atom-editor-sync` builds Atom (the latest stable version) with the `package-sync` package pre-installed to allow for the easy installation of packages listed in a `packages.cson` file.

### [-web](/atom-editor-web/)

`atom-editor-web` builds Atom with several packages intended for web development, pre-installed, to allow for the easy diving into web development after installing Atom. These packages include:

## [brackets](/brackets/)

The `brackets` package has a few minor improvements over the one in the AUR. For example, it uses a customized desktop file, with support for several other text files.

## [codebox](/codebox/)

The `codebox` PKGBUILD is provided here with tweaks to make it build properly, unlike the one it is derived from in the AUR.

## [komodo-edit](/komodo-edit/) / [lighttable](/lighttable/) / [sublime-text](/sublime-text/){,[-dev](/sublime-text-dev/)}

These PKGBUILDs are designed to provide a desktop configuration file with built-in support for opening a range of different MIME types.

## [linux-ck](/linux-ck/)

The `linux-ck` package is kept here, it was taken from the AUR with the BFQ enabled.

## [messengerfordesktop](/messengerfordesktop/)

The `messengerfordesktop` provides the latest version of Sytten's MessengerForDesktop fork.

## [shadow-icon-theme](/shadow-icon-theme/){,[-git](/shadow-icon-theme-git/)}

These packages provide the [Shadow icon theme](https://github.com/rudrab/Shadow).

## [textadept](/textadept/)

This package provides the Textadept text editor.

## Vim

I have also included Vim-related packages, as [Vim updates](https://github.com/vim/vim/releases) come out daily or even hourly, so it is unrealistic to expect the maintainers of the `gvim` and `vim` packages at <https://www.archlinux.org/packages/extra/x86_64/gvim> and <https://www.archlinux.org/packages/extra/x86_64/vim>, respectively, to keep them constantly up-to-date. To install the latest gVim using this repository I recommend you run:

```bash
git clone https://github.com/fusion809/PKGBUILDs
cd PKGBUILDs/gvim-git
makepkg -si &mdash;noconfirm
```

The `gvim-git` package in this repository is a combination of the `gvim-git` and `vim-runtime-git` packages in the AUR. I merged these packages to save bandwidth and disk space, as both PKGBUILDs clone the same [GitHub repository](https://github.com/vim/vim). Likewise the `gvim` package in this repository is also a combination of the `gvim` and `vim-runtime` packages in the `[extra]` pacman repository, except it is updated more frequently. I have also added the `gvim` package to my [OBSAEB](https://build.opensuse.org/package/show/home:fusion809:arch_extra/gvim) it is also here because the OBS usually takes several hours before any commits I push there will result in an updated package in this repository.

The desktop configuration files of [`gvim`](/gvim/), [`gvim-git`](/gvim-git/) and [`gvim-gtk3`](/gvim-gtk3/) have in-built MIME type support for several file formats.

## [visual-studio-code](/visual-studio-code/)

This PKGBUILD builds a Visual Studio Code (VScode) package from the pre-compiled Linux zip archives released officially by Microsoft. It is important to note, that while the packages built by `-git` and `-oss` PKGBUILDs are MIT-licensed, this package is **not** and is rather licensed under a proprietary

<abbr title="End-User License Agreement">EULA</abbr>

license.

### [-git](/visual-studio-code-git/)

This PKGBUILD builds the Visual Studio Code (VScode) text editor from the latest source code in its official git repository. It can be installed simultaneously with the stable version mentioned below (unlike the `visual-studio-code-git` package in the AUR which cannot be installed simultaneously with `visual-studio-code-oss`).

### [-oss](/visual-studio-code-oss/)

This PKGBUILD builds the latest stable release of VScode from source code. It fixes an error I noticed in the `visual-studio-code-oss` PKGBUILD of the AUR, that prevented it from building correctly (namely with respect to the amount of RAM accessible to `node`) and also provides a desktop configuration file with `MimeType` support for several extra file formats. It even builds the extension manager, that is not normally built with OSS builds of VSCode.
