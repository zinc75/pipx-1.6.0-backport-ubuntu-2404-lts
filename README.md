# Backported pipx Package for Ubuntu 24.04 (Noble)

## Overview

This repository provides a backported version of the `pipx` package (version 1.6.0) for Ubuntu 24.04 LTS (Noble). This backport was created to address issues with the `pipx` package in the official Ubuntu repositories, specifically:

- [Issue #1524](https://github.com/pypa/pipx/issues/1524): `sudo pipx ensurepath --global` fails on Ubuntu 24.04 LTS.
- [Issue #1481](https://github.com/pypa/pipx/issues/1481): `pipx` package in Ubuntu 24.04 is obsolete.

This repository contains the source files, build scripts, and precompiled `.deb` package to facilitate installation and usage of the latest `pipx` version.

---

## Sources Used

The backport was created using the following upstream sources:

- **Original source tarball**: `python-pipx_1.6.0.orig.tar.gz`
- **Debian packaging**: `python-pipx_1.6.0-1.debian.tar.xz`
- **Debian source control file**: `python-pipx_1.6.0-1.dsc`

These sources were retrieved from the official Ubuntu 24.10 (Oracular) repository:

- Source package location: [http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pipx/](http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pipx/)
- Package details: [Ubuntu 24.10 pipx](https://packages.ubuntu.com/oracular/pipx)

---

## System Details

The backport was compiled and tested on the following system:

```plaintext
Linux proteus 6.8.0-51-generic #52-Ubuntu SMP PREEMPT_DYNAMIC Thu Dec  5 13:09:44 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
```

This system runs Ubuntu 24.04 LTS (Noble) on the `x86_64` architecture.

---

## Installation Instructions

To install the backported `pipx` package, follow these steps:

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Install the `.deb` package:
   ```bash
   sudo dpkg -i python-pipx_1.6.0-1ubuntu24.04-backport1_all.deb
   ```

3. Resolve any missing dependencies:
   ```bash
   sudo apt -f install
   ```

4. Verify the installation:
   ```bash
   pipx --version
   ```

---

## Building from Source

If you prefer to build the package from source, follow these steps:

1. Install required tools:
   ```bash
   sudo apt update
   sudo apt install build-essential devscripts dpkg-dev
   ```

2. Extract the source package:
   ```bash
   dpkg-source -x python-pipx_1.6.0-1.dsc
   ```

   Alternatively, if you fear I might have modified anything in the source from the official 24.10 repository (I've not, easy to check with a diff) : [http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pipx/](http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pipx/) , you can also download the files directly from there :

   ```bash
   dget -u  http://archive.ubuntu.com/ubuntu/pool/universe/p/python-pipx/python-pipx_1.6.0-1.dsc
   ```

4. Install build dependencies:
   ```bash
   cd python-pipx-1.6.0
   sudo apt build-dep .
   ```

5. Build the package:
   ```bash
   dpkg-buildpackage -us -uc
   ```

6. Install the generated `.deb` file as described above :

   ```bash
   sudo dpkg -i python-pipx_1.6.0-1ubuntu24.04-backport1_all.deb
   ```

3. Resolve any missing dependencies:
   ```bash
   sudo apt -f install
   ```

4. Verify the installation:
   ```bash
   pipx --version
   ```

---

## Contribution and Feedback

Since this is basically only a backport of the .deb available for Ubuntu 24.10 for the pipx package, and since I'm neither an Ubuntu dev nor a pipx developer, feedback on the usage of pipx should be redirected to the pypa/pipx repository: https://github.com/pypa/pipx/issues, following the rules available in the [`python-pipx-1.6.0/CONTRIBUTING.md`](https://github.com/zinc75/pipx-1.6.0-backport-ubuntu-2404-lts/blob/main/python-pipx-1.6.0/CONTRIBUTING.md) file.

---

## License

The contents of this repository follow the original MIT licensing of the `pipx` package. Refer to the [`python-pipx-1.6.0/LICENSE`](https://github.com/zinc75/pipx-1.6.0-backport-ubuntu-2404-lts/blob/main/python-pipx-1.6.0/LICENSE`] file in the source directory for more details.

