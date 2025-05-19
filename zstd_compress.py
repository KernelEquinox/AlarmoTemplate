#!/usr/bin/env python3
import os
import sys
import zstd



# A filename must be provided
if len(sys.argv) != 3:
    script = os.path.basename(sys.argv[0])
    print(f"Usage: {script} <file> <(outfile | -)>\n")
    print(" Notes:")
    print("        An output file of '-' will overwrite the file being compressed.")
    exit()



# Read command arguments
infile = sys.argv[1]
outfile = sys.argv[2]



# Compress the file
with open(infile, "rb") as f:
    data = f.read()

out = zstd.compress(data)

if outfile == "-":
    outfile = infile

with open(outfile, "wb") as f:
    f.write(out)
