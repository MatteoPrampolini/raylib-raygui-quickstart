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
Inside the UCRT64 ambient:

I recommend updating everything (double `yy` for a clean reinstallation):

```pacman -Syyu```

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

Inside **MSYS2 UCRT64**, update using one of these:

Standard (recommended):

pacman -Syu

Force database refresh:

pacman -Syyu

Install dependencies:

```bash
pacman -S \
    mingw-w64-ucrt-x86_64-toolchain \
    mingw-w64-ucrt-x86_64-raylib \
    mingw-w64-ucrt-x86_64-clang-tools-extra \
    mingw-w64-ucrt-x86_64-bear \
    mingw-w64-ucrt-x86_64-pkgconf \
    make
```

#### Linux

*(Not tested, Arch Linux)*

```bash
sudo pacman -S base-devel raylib pkgconf bear clang
```

### Download and setup

#### GitHub magic

Use the **"Use this template"** button near the stars counter.

Note: The Unlicense license will be selected by default.

#### Manually

```bash
git clone --depth 1 https://github.com/MatteoPrampolini/raylib-raygui-quickstart.git myproject
cd myproject
rm -rf .git
git init -b main
git add .
git commit -m "Initial commit"
```

### Build & Run

Run these commands from the project root:

```bash
make                   # Build
make run               # Build and run
make compile-commands  # Generate compile_commands.json using Bear
make clean             # Remove build files
```

* `make run` builds the project (if needed) and runs the executable.
* `make compile-commands` generates `compile_commands.json` for clangd. Run it when source files or compiler flags change.

The executable is generated in `build/`.

**clangd:** Automatically detects `compile_commands.json` in the project root. No additional configuration should be needed in Emacs if clangd is already working.

### License

raylib and raygui are distributed under their own licenses, independently of this project's license.
