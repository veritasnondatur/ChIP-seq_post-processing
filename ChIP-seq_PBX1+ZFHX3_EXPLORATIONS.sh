#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# File paths
BED1="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/MF_ip_pbx_vs_input_11_peaks.bed"
BED2="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115-ZFHX3_1_peaks.bed"
BED3="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115-ZFHX3_2_peaks.bed"
BED4="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115-ZFHX3_3_peaks.bed"

# Output file
OUTPUT="/Users/veralaub/Documents/postdoc/bioinformatics/results/ChIP-seq_PBX1+ZFHX3_MF_E11.5/ChIP-seq_PBX1+ZFHX3_E11.5MF_multiinter_output.bed"

# Run bedtools multiinter
echo "Running bedtools multiinter..."
bedtools multiinter -i "$BED1" "$BED2" "$BED3" "$BED4" > "$OUTPUT"

echo "Intersection completed."
echo "Results saved to: $OUTPUT"
