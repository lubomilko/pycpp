REM Store the current working dir and switch to the directory where this bat file is located,
REM because all paths below are relative to this dir. %~dp0 contains the dir path of this bat file.
@pushd %~dp0

REM Process src.c file into the processed_src.c with full output and verbosity set to the highest level 2.
python "../../src/neatcpp" "c_files/src.c" "c_files/processed_src.c" -i "c_files/incl" -x "stdint.h" -f -v2

REM Switch back to the original current working directory.
@popd
