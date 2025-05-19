#!/bin/bash

# Make sure a directory was specified
if [[ $# != 1 ]]; then
	echo "Usage: $0 <dir>";
	exit;
fi

# Get the script directory
script_path=$(readlink -f $0);
script_dir=$(dirname $script_path);

# Change to the target directory
cd $1;

# Remove all .DS_Store files
for i in $(find . -name ".DS_Store"); do
	rm $i;
done

# Initial newline for Aesthetic™ purposes
printf "\n";



#
# -- CONVERT --
#

# Create a temporary directory for building the SHPAC
printf "Creating build directory ... ";
mkdir build;
printf "done!\n";

# Copy all assets to the build directory
cp -R assets layouts desc.json build;
cd build;

# Pack the desc.json file using MsgPack
json2msgpack -i desc.json -o desc.json



# Compile all Lua files
printf "Compiling Lua scripts ... ";
for f in $(find . -iname "*.lua"); do

	fname=$f;
	cols=$(tput cols);
	cols=$((cols-26));
	((${#fname} > $cols)) && fname="${fname:0:$((cols-3))}...";
	printf "\rCompiling Lua scripts ... %-"$cols"s" "$fname";

	luac -o "$f" -s "$f";
done
cols=$(tput cols);
printf "\r%-"$cols"s";
printf "\rCompiling Lua scripts ... done!\n";



# Convert all PNGs to BMPs
printf "Converting PNGs to BMPs ... ";
for f in $(find . -iname "*.png"); do

	fname=$f;
	cols=$(tput cols);
	cols=$((cols-28));
	((${#fname} > $cols)) && fname="${fname:0:$((cols-3))}...";
	printf "\rConverting PNGs to BMPs ... %-"$cols"s" "$fname";

	bname=${f:r};
	magick "$f" -flop -rotate -90 -type TrueColorAlpha "${f:r}.bmp";
	rm "$f";
done
cols=$(tput cols);
printf "\r%-"$cols"s";
printf "\rConverting PNGs to BMPs ... done!\n";



# Compress all BMP files
printf "Compressing BMPs ... ";
for f in $(find . -iname "*.bmp"); do

	fname=$f;
	cols=$(tput cols);
	cols=$((cols-21));
	((${#fname} > $cols)) && fname="${fname:0:$((cols-3))}...";
	printf "\rCompressing BMPs ... %-"$cols"s" "$fname";

	python3 $script_dir/zstd_compress.py "$f" -;
done
cols=$(tput cols);
printf "\r%-"$cols"s";
printf "\rCompressing BMPs ... done!\n";



# Compress all JSON files
printf "Compressing JSON ... ";
for f in $(find . -iname "*.json"); do

	fname=$f;
	cols=$(tput cols);
	cols=$((cols-21));
	((${#fname} > $cols)) && fname="${fname:0:$((cols-3))}...";
	printf "\rCompressing JSON ... %-"$cols"s" "$fname";

	python3 $script_dir/zstd_compress.py "$f" -;
done
cols=$(tput cols);
printf "\r%-"$cols"s";
printf "\rCompressing JSON ... done!\n";



#
# -- BUILD --
#

# Loop through each sorted file
namelen=${#1};
printf "Creating $1.shpac ... ";
for f in $(find . -type f | sort); do

	fname=$f;
	cols=$(tput cols);
	cols=$((cols-45-namelen));
	((${#fname} > $cols)) && fname="${fname:0:$((cols-3))}...";
	printf "\rCreating $1.shpac ...    Adding file to SHPAC: %-"$cols"s" "$fname";

	# Add a 'z' comment if the file is ZSTD compressed
	is_zstd=$(file $f | grep -i "Zstandard");
	if [[ ! -z "$is_zstd" ]]; then
		echo "z" | zip -r -0 -D -X -c $1.shpac.raw $f >/dev/null;

	# Otherwise just add the file normally
	else
		zip -r -0 -D -X $1.shpac.raw $f > /dev/null;
	fi
done
cols=$(tput cols);
printf "\r%-"$cols"s";
printf "\rCreating $1.shpac ... done!\n";



#
# -- ENCRYPT --
#

# Move the raw SHPAC file to the parent directory
mv $1.shpac.raw ../;

# Return to the parent directory
cd ../;

# Encrypt the SHPAC file
python3 $script_dir/ciphtool.py encrypt $1.shpac.raw $1.shpac;



#
# -- CLEAN --
#

# Delete the raw SHPAC file
rm $1.shpac.raw;

# Delete the build directory
rm -rf build/;

# All done
printf "\nBuild completed, output file at [$1/$1.shpac]\n";
