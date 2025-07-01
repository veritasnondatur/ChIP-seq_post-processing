#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# File paths
BED1="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/MF_ip_pbx_vs_input_11_peaks.bed"
BED2="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115-ZFHX3_1_peaks.bed"
BED3="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115-ZFHX3_2_peaks.bed"
BED4="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115-ZFHX3_3_peaks.bed"
BED5="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115Epi-PBX1_1_peaks.bed"
BED6="/Users/veralaub/Documents/postdoc/bioinformatics/data/ChIP-seq/midface/E115Epi-PBX1_2_peaks.bed"

# Output files
OUTPUT1="/Users/veralaub/Documents/postdoc/bioinformatics/results/ChIP-seq_PBX1+ZFHX3_MF_E11.5/ChIP-seq_PBX1+ZFHX3_bothE11.5MF/ChIP-seq_PBX1+ZFHX3_E11.5MF_multiinter_output.bed"
OUTPUT2="/Users/veralaub/Documents/postdoc/bioinformatics/results/ChIP-seq_PBX1+ZFHX3_MF_E11.5/ChIP-seq_PBX1_E11.5Epi+ZFHX3_E11.5MF/ChIP-seq_PBX1_E11.5Epi+ZFHX3_E11.5MF_multiinter_output.bed"

# Run bedtools multiinter for whole MF datasets
echo "Running bedtools multiinter..."
bedtools multiinter -i "$BED1" "$BED2" "$BED3" "$BED4" > "$OUTPUT1"

echo "Intersection of whole MF datasets completed."
echo "Results saved to: $OUTPUT1"


# Run bedtools multiinter for E11.5 PBX1 Epi and ZFHX3 whole MF datasets
echo "Running bedtools multiinter..."
bedtools multiinter -i "$BED5" "$BED6" "$BED2" "$BED3" "$BED4" > "$OUTPUT2"

echo "Intersection of E11.5 PBX1 Epi and ZFHX3 whole MF datasets completed."
echo "Results saved to: $OUTPUT2"



