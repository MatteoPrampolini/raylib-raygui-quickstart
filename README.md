# raylib + raygui Quickstart

Minimal C quickstart using raylib, raygui and Makefile.

**Status:** WIP
**Platforms:** Windows, Linux
**Build system:** GNU Make
**Toolchain:** GCC (MSYS2 UCRT64 on Windows)

### Setup

#### Windows

Install MSYS2:

```powershell
winget install -e --id MSYS2.MSYS2
```

Install dependencies (MSYS2 UCRT64):

```bash
pacman -S \
    mingw-w64-ucrt-x86_64-toolchain \
    mingw-w64-ucrt-x86_64-raylib \
    mingw-w64-ucrt-x86_64-clang-tools-extra \
    mingw-w64-ucrt-x86_64-pkgconf \
    make
```

#### Linux

*(not tested, Arch Linux)*

```bash
sudo pacman -S base-devel raylib pkgconf
```

### Build & Run

Run these commands from the project root:

```bash
make          # Build
make run      # Build and run
make clean    # Remove build files
```

The executable is generated in `build/`.

### License

raylib and raygui are distributed under their own licenses, independently of this project's license.
