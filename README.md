# Arch PKGBUILDs

This repository is composed of PKGBUILDs I have written (or modified from existing packages in the Arch Build Service and Arch User Repository) to help me install packages not in the AUR or pacman repos, or in the case of packages already in either class of repository, these PKGBUILDs have amendments to make them better suit my purposes. The contents of this repository are licensed under GPLv3. Despite this, you should probably be made aware of the fact that some of the packages these PKGBUILDs are for building are not necessarily FOSS. This repository was set up prior to when I set up my **Open Build Service Arch_Extra Branch** (**OBSAEB**) in March 2016. Most PKGBUILDs in this repository ended up being moved to this branch. The only exceptions are those that for whatever reason are unsuitable for my OBSAEB. Or ones that I wanted to hang onto. The OBS has a few issues that GitHub Arch repositories do not, see [this post on *The Hornery*](https://fusion809.github.io/how-to-create-archlinux-repository/) for details.

While this repository is primarily designed to provide me with the packages I want, I am willing to turn it into a community repo with packages that others want too. Merely start a [new issue](https://github.com/fusion809/PKGBUILDs/issues/new) or file a pull request, if you want a new package added or have modification suggests for existing packages. I am even willing to add suitable packages to my OBSAEB. Despite this, I have written an [article](https://fusion809.github.io/package-development), in [*The Hornery*](https://fusion809.github.io) about how you can set up your own OBS Project and write PKGBUILDs.

Several of these packages are built as binaries and attached to the [current tag](https://github.com/fusion809/PKGBUILDs/releases/tag/current), alongside some package database files. This allows me to create a binary package repository from which users can download and install binaries using pacman. 

## Table of Contents

- [List of Packages](#list-of-packages)

  - [Integrated Development Environments / Text Editors](#integrated-development-environments&mdash;text-editors)

- [arch-atom](#arch-atom)

  - [apm-bleeding](#apm-bleeding)
  - [atom-bleeding](#atom-bleeding)
  - [electron](#electron)

- [atom-editor](#atom-editor)

  - [-beta](#-beta)
  - [-git](#-git)
  - [-sync](#-sync)

- [blockify](#blockify)

- [brackets](#brackets)

- [code](#code)

  - [-git](#code-git)
  - [-oss](#code-oss)

- [codebox](#codebox)

- [efl-git](#efl-git)

- [enlightenment](#enlightenment)

- [github-release](#github-release)

- [gothub](#gothub)

- [hugo](#hugo)

- [komodo-edit/libudev.so.0/lighttable/sublime-text{,-dev}](#komodo-edit&mdash;lighttable&mdash;sublime-text-dev)

- [linux-ck / linux-lts-ck](#linux-ck&mdash;linux-lts-ck)

- [messengerfordesktop](#messengerfordesktop)

- [nodejs](#nodejs)

- [nodejs-lts](#nodejs-lts)

- [octave](#octave)

- [osx-arc-white-git](#osx-arc-white-git)

- [shadow-icon-theme](#shadow-icon-theme)

- [shadow-icon-theme-git](#shadow-icon-theme-git)

- [textadept](#textadept)

- [ubuntu-wallpapers](#ubuntu-wallpapers)

- [Vim](#vim)

- [virtualbox](#virtualbox)

&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;

## List of Packages

The list of separate packages in this repository includes:

### Artwork
* [osx-arc-white-git](#osx-arc-white-git)
* [shadow-icon-theme](#shadow-icon-theme)
* [shadow-icon-theme-git](#shadow-icon-theme-git)
* [ubuntu-wallpapers](#ubuntu-wallpapers)

### GitHub Tools
* [github-release](#github-release)
* [gothub](#gothub)

### Integrated Development Environments / Text Editors

- [arch-atom](/arch-atom/)

  - [apm-bleeding](/apm-bleeding/)
  - [atom-bleeding](/atom-bleeding/)
  - [electron](/electron/)

- [atom-editor](/atom-editor/)

  - [-beta](/atom-editor-beta/)
  - [-git](/atom-editor-git/)
  - [-sync](/atom-editor-sync/)

- [brackets](/brackets/)

- [code](/code/)

  - [-git](/code-git/)
  - [-oss](/code-oss/)

- [codebox](/codebox/)

- [gvim](/gvim/)

  - [-git](/gvim-git/)
  - [-gtk3](/gvim-gtk3/)

- [komodo-edit](/komodo-edit/)

- [libudev.so.0](/libudev.so.0/)

- [lighttable](/lighttable/)

- [sublime-text](/sublime-text/)

  - [-dev](/sublime-text-dev/)

- [textadept](/textadept/)

### Other Desktop Applications

- [blockify](/blockify/)
- [efl-git](/efl-git/)
- [enlightenment](/enlightenment/)
- [messengerfordesktop](/messengerfordesktop/)
- [octave](/octave/)
- [virtualbox](/virtualbox/)

### Other Programs
- [linux-ck](/linux-ck/)
- [linux-lts-ck](/linux-lts-ck/)
- [nodejs](/nodejs/)
- [nodejs-lts](/nodejs-lts/)

## [arch-atom](/arch-atom/)
This submodule was forked from the [tensor5/arch-atom](tensor5/arch-atom) GitHub repository. The main difference is that they provide a more bleeding-edge version of Atom (`atom-bleeding`), with several core packages removed so that they can be managed with APM. The packages that I bundled with it are either (1) required for the successful building of the package or (2) need to compiled against the version of Electron that Atom uses in order to work. Packages that fit the mould of (2) are bundled with `atom-bleeding` because I have set up `atom-bleeding` to be installed simultaneously to `atom-editor-base`, which uses a different version of Electron. So if the package needs to be build against the version of Electron Atom is using then I would need to recompile these packages' build modules every time I switch between builds of Atom.

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

### [-git](/atom-editor-git/)

The `atom-editor-git` package, uses a different package version than that in the AUR.

### [-sync](/atom-editor-sync/)

`atom-editor-sync` builds Atom (the latest stable version) with the `package-sync` package pre-installed to allow for the easy installation of packages listed in a `packages.cson` file.

## [brackets](/brackets/) / [libudev.so.0](/libudev.so.0/)

The `brackets` package has a few minor improvements over the one in the AUR. For example, it uses a customized desktop file, with support for several other text files. The `libudev.so.0` package has been taken from the AUR to provide `brackets` with its dependency that is missing from the Arch Linux official repositories.

## [code](/code/)

This PKGBUILD builds a Visual Studio Code (VScode) package from the pre-compiled Linux zip archives released officially by Microsoft. It is important to note, that while the packages built by `-git` and `-oss` PKGBUILDs are MIT-licensed, this package is **not** and is rather licensed under a proprietary

<abbr title="End-User License Agreement">EULA</abbr>

license.

### [-git](/code-git/)

This PKGBUILD builds the Visual Studio Code (VScode) text editor from the latest source code in its official git repository. It can be installed simultaneously with the stable version mentioned below (unlike the `code-git` package in the AUR which cannot be installed simultaneously with `code-oss`).

### [-oss](/code-oss/)

This PKGBUILD builds the latest stable release of VScode from source code. It fixes an error I noticed in the `code-oss` PKGBUILD of the AUR, that prevented it from building correctly (namely with respect to the amount of RAM accessible to `node`) and also provides a desktop configuration file with `MimeType` support for several extra file formats. It even builds the extension manager, that is not normally built with OSS builds of VSCode.

## [codebox](/codebox/)
The `codebox` PKGBUILD is provided here with tweaks to make it build properly, unlike the one it is derived from in the AUR.

## [github-release](/github-release/)
The `github-release` package is an Arch Linux package for the [github-release](https://github.com/aktau/github-release) program written in Go by [@aktau](https://github.com/aktau). This program allows you to edit tagged releases, their notes and the attached binaries that come with them. I maintain this package in the AUR too.

## [gothub](/gothub/)
The `gothub` package is an Arch Linux package for the [gothub](https://github.com/itchio/gothub) fork of aktau's github-release program. The upstream gothub package is more actively maintained than the github-release package and it includes an extra ability, namely the ability to replace binaries attached to a tagged release. I maintain this package in the AUR too.

## [hugo](/hugo/)
The `hugo` package is identical to the `hugo-src` one that I contributed to the AUR. Both provide the [Hugo](http://hugo.spf13.com/) SSG built from source code, as opposed to the `hugo` AUR package which is built from pre-compiled Linux binaries.

## [komodo-edit](/komodo-edit/) / [lighttable](/lighttable/) / [sublime-text](/sublime-text/){,[-dev](/sublime-text-dev/)}

These PKGBUILDs are designed to provide a desktop configuration file with built-in support for opening a range of different MIME types. They are all taken from the AUR.

## [linux-ck](/linux-ck/) / [linux-lts-ck](/linux-lts-ck/)

The `linux-ck` and `linux-lts-ck` packages are kept here, both were taken from the AUR with the BFQ enabled.

## [messengerfordesktop](/messengerfordesktop/)

The `messengerfordesktop` provides the latest version of Sytten's MessengerForDesktop fork.

## [nodejs](/nodejs/)
The `nodejs` package from the `[community]` repository. It is here for when the `[community]` repository's package becomes out-of-date.

## [nodejs-lts](/nodejs-lts/)
The `nodejs-lts` package from the AUR. It is here as the AUR is out-of-date and the maintainer does not seem able to keep it up-to-date.

## [octave](/octave/)
The `octave` package from the `[extra]` repository, which tends to take a while to get updated when new releases come out.

## [osx-arc-white-git](/osx-arc-white-git/)
The `osx-arc-white-git` package in the AUR, which I too maintain.

## [shadow-icon-theme](/shadow-icon-theme/){,[-git](/shadow-icon-theme-git/)}

These packages provide the [Shadow icon theme](https://github.com/rudrab/Shadow). Both are present in the AUR. The `shadow-icon-theme-git` theme is one I maintain in the AUR.

## [textadept](/textadept/)

This package provides the Textadept text editor.

## [ubuntu-wallpapers](/ubuntu-wallpapers/)
This `ubuntu-wallpapers` packages provides the Ubuntu wallpapers. The AUR package from which it is derived is outdated, hence why I added an updated version of it to this repository.

## Vim

I have also included Vim-related packages, as [Vim updates](https://github.com/vim/vim/releases) come out daily or even hourly, so it is unrealistic to expect the maintainers of the `gvim` and `vim` packages at <https://www.archlinux.org/packages/extra/x86_64/gvim> and <https://www.archlinux.org/packages/extra/x86_64/vim>, respectively, to keep them constantly up-to-date. To install the latest gVim using this repository I recommend you run:

```bash
git clone https://github.com/fusion809/PKGBUILDs
cd PKGBUILDs/gvim-git
makepkg -si &mdash;noconfirm
```

The `gvim-git` package in this repository is a combination of the `gvim-git` and `vim-runtime-git` packages in the AUR. I merged these packages to save bandwidth and disk space, as both PKGBUILDs clone the same [GitHub repository](https://github.com/vim/vim). Likewise the `gvim` package in this repository is also a combination of the `gvim` and `vim-runtime` packages in the `[extra]` pacman repository, except it is updated more frequently. I have also added the `gvim` package to my [OBSAEB](https://build.opensuse.org/package/show/home:fusion809:arch_extra/gvim) it is also here because the OBS usually takes several hours before any commits I push there will result in an updated package in this repository.

The desktop configuration files of [`gvim`](/gvim/), [`gvim-git`](/gvim-git/) and [`gvim-gtk3`](/gvim-gtk3/) have in-built MIME type support for several file formats.

## [virtualbox](/virtualbox/)
This PKGBUILD is a copy of the `virtualbox` in the `[community]` repository. I keep it as I know that VirtualBox packages tend to take a few days to get into the `[community]` repo.
