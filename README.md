# Alarmo Template Tools

This is a series of scripts used to create a working Alarmo theme from a folder of theme data.

The `ciphtool.py` script is taken from the [alarmo](https://github.com/GaryOderNichts/alarmo) repository by [GaryOderNichts](https://github.com/GaryOderNichts). The only modificiation is that the `AES_KEY` and `AES_IV` variables are declared in the script itself for brevity.


## Requirements

After installing the necessary requirements, the `create_shpac.sh` Bash script should work fine under Linux, macOS, and WSL.

Below are the requirements needed for the script to work.

* [msgpack-tools](https://github.com/ludocode/msgpack-tools)
* `imagemagick`
* `python3`
* `python3-zstd`
* `python3-pycryptodome`
* `lua5.4`


## Usage

First, update the `AES_KEY` and `AES_IV` values in the `ciphtool.py` file.

After that, run the `create_shpac.sh` script with the theme directory as an argument and the `.shpac` file should (hopefully) be created.

```
$ ./create_shpac.sh tpl

Creating build directory ... done!
Compiling Lua scripts ... done!
Converting PNGs to BMPs ... done!
Compressing BMPs ... done!
Compressing JSON ... done!
Creating tpl.shpac ... done!

Build completed, output file at [tpl/tpl.shpac]
```
