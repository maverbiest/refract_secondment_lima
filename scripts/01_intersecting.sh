#!/bin/env/bash
set -euo pipefail

bedtools intersect -wao -a <(tail -n +2 edb79_gen_to_prot_mapping_reformat.tsv) -b <(tail -n +2 elm_instances_homo_sapiens_reformat.tsv) > ../../results/intersections/strs_to_elm.tsv

bedtools intersect -wao -a <(tail -n +2 edb79_gen_to_prot_mapping_reformat.tsv) -b <(tail -n +2 swissprot_intrinsic_disorder_mapping_reformat.tsv) > ../../results/intersections/strs_to_idrs.tsv

bedtools intersect -wao -a <(tail -n +2 elm_instances_homo_sapiens_reformat.tsv) -b <(tail -n +2 swissprot_intrinsic_disorder_mapping_reformat.tsv) > ../../results/intersections/elm_to_idrs.tsv

bedtools intersect -wao -a <(tail -n +2 data/reformat/edb79_prot_to_gen_mapping_with_div_reformat.tsv) -b <(tail -n +2 data/reformat/elm_instances_homo_sapiens_reformat.tsv) > results/intersections/prot_strs_to_elm.tsv

bedtools intersect -wao -a <(tail -n +2 edb79_prot_to_gen_mapping_with_div_reformat.tsv) -b <(tail -n +2 swissprot_intrinsic_disorder_mapping_reformat.tsv) > ../../results/intersections/prot_strs_to_idrs.tsv
