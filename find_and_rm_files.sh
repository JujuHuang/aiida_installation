#!/bin/bash
####below are used to delete the useness files from raspa and cp2k simulations via aiida
find . -type f \( \
  -name "CO2.def" \
  -o -name "force_field.def" \
  -o -name "force_field_mixing_rules.def" \
  -o -name "pseudo_atoms.def" \
  -o -name "_scheduler-stdout.txt" \
  -o -name "GTH_POTENTIALS" \
  -o -name "dftd3.dat" \
  -o -name "BASIS_MOLOPT" \
\) -exec rm {} \;
