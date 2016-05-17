# Arch PKGBUILDs
This repository is composed of PKGBUILDs I have written (or modified from existing packages in the Arch Build Service and Arch User Repository) to help me install packages not in the AUR or pacman repos, or in the case of packages already in either class of repository, these PKGBUILDs have amendments to make them better suit my purposes. The contents of this repository are licensed under GPLv3. Despite this, you should probably be made aware of the fact that some of the packages these PKGBUILDs are for building are not necessarily FOSS. This repository was set up prior to when I set up my **Open Build Service Arch_Extra Branch** (**OBSAEB**) in March 2016. Most PKGBUILDs in this repository ended up being moved to this branch. The only exceptions are those that for whatever reason are unsuitable for my OBSAEB.

While this repository is primarily designed to provide me with the packages I want, I am willing to turn it into a community repo with packages that others want too. Merely start a [new issue](https://github.com/fusion809/PKGBUILDs/issues/new) or file a pull request, if you want a new package added or have modification suggests for existing packages. I am even willing to add suitable packages to my OBSAEB. Despite this, I have written an [article](https://fusion809.github.io/package-development), in [*The Hornery*](https://fusion809.github.io) about how you can set up your own OBS Project and write PKGBUILDs.

## atom-editor
The `atom-editor` package in this repository is designed to not fail, in its build, due to minor Internet connectivity issues which would stump the PKGBUILD in the AUR.

### -beta
The `atom-editor-beta` package, unlike that in the AUR, should also persevere despite intermittent network connectivity issues and **can** be installed alongside `atom-editor` on the same machine. These two packages require Internet access during their build, so I cannot add them to my OBSAEB.

### -dev
The `atom-editor-dev` package builds the 1.9.0-dev branch of Atom and places its installed files in locations that do not conflict with either `atom-editor` or `atom-editor-beta`'s installed files.

### -sync
`atom-editor-sync` builds Atom (the latest stable version) with the `package-sync` package pre-installed to allow for the easy installation of packages listed in a `packages.cson` file.

## brackets
The `brackets` package has a few minor improvements over the one in the AUR. For example, it uses a customized desktop file, with support for several other text files.

## codebox
The `codebox` PKGBUILD is provided here with tweaks to make it build properly, unlike the one it is derived from in the AUR.

## emacs / komodo-edit / lighttable
These PKGBUILDs are designed to provide a desktop configuration file with built-in support for opening a range of different MIME types. 

## linux-ck
The `linux-ck` package is kept here, it was taken from the AUR with the BFQ enabled.

## messengerfordesktop
The `messengerfordesktop` provides the latest version of Sytten's MessengerForDesktop fork.

## shadow-icon-theme{,-git}
These packages provide the [Shadow icon theme](https://github.com/rudrab/Shadow).

## textadept
This package provides the Textadept text editor.

## Vim
I have also included Vim-related packages, as [Vim updates](https://github.com/vim/vim/releases) come out daily or even hourly, so it is unrealistic to expect the maintainers of the `gvim` and `vim` packages at https://www.archlinux.org/packages/extra/x86_64/gvim and https://www.archlinux.org/packages/extra/x86_64/vim, respectively, to keep them constantly up-to-date. To install the latest gVim using this repository I recommend you run:

```bash
git clone https://github.com/fusion809/PKGBUILDs
cd PKGBUILDs/gvim-git
makepkg -si --noconfirm
```

The `gvim-git` package in this repository is a combination of the `gvim-git` and `vim-runtime-git` packages in the AUR. I merged these packages to save bandwidth and disk space, as both PKGBUILDs clone the same [GitHub repository](https://github.com/vim/vim). Likewise the `gvim` package in this repository is also a combination of the `gvim` and `vim-runtime` packages in the `[extra]` pacman repository, except it is updated more frequently. I have also added the `gvim` package to my [OBSAEB](https://build.opensuse.org/package/show/home:fusion809:arch_extra/gvim) it is also here because the OBS usually takes several hours before any commits I push there will result in an updated package in this repository.

The desktop configuration files of `gvim`, `gvim-git` and `gvim-gtk3` have in-built MIME type support for several file formats. 

## visual-studio-code-git
This PKGBUILD builds the Visual Studio Code (VScode) text editor from the latest source code in its official git repository. It can be installed simultaneously with the stable version mentioned below (unlike the `visual-studio-code-git` package in the AUR which cannot be installed simultaneously with `visual-studio-code-oss`).

## visual-studio-code-oss
This PKGBUILD builds the latest stable VScode from source code. It fixes an error I noticed in the `visual-studio-code-oss` PKGBUILD of the AUR, that prevented it from building correctly and also provides a desktop configuration file with `MimeType` support for several extra file formats.
