# polar-flow-export

Command line tool for bulk exporting TCX files from [Polar Flow](https://flow.polar.com/) and fixing the TCX files for the [Garmin Connect platform](https://connect.garmin.com/).

sjmduncan: I make litle changes to work with newest python version.
filipsPL: fixing to use new Polar API (Good Job, Polar!) and added bash script `fix_tcx.sh` for fixing XML in TCX files.

Requires [Python](https://www.python.org) 3.7 or later and the [python-dateutil](https://pypi.python.org/pypi/python-dateutil) library. Bash script `fix_tcx.sh` requires `xmlstarlet` (`sudo apt install xmlstarlet` in a debian-like systems)

Usage is as follows:

`python3 polarflowexport.py <username> <password> <start_date> <end_date> <output_dir>`

The start_date and end_date parameters are ISO-8601 date strings (i.e.
year-month-day). An example invocation is as follows:

`python3 polarflowexport.py me@me.com mypassword 2015-08-01 2019-12-30 tcx/`


# The whole workflow

1. Download all sessions in TCX by the command, e.g.: `python3 polarflowexport.py me@me.com mypassword 2015-08-01 2019-12-30 tcx/`
2. Fix the TCX files with `fix_tcx.sh` (if the tcx files are in `tcx/` dir, no need to change anything). Fixed files will go to `tcx-fixed`
3. Go to the [Garmin Connect Import Data section](https://connect.garmin.com/modern/import-data) and select generated fixed files from `tcx-fixed`
4. Voilà!

## License

Licensed under the Apache Software License v2, see: http://www.apache.org/licenses/LICENSE-2.0

This project is not in any way affiliated with Polar or Polar Flow. It is purely a
hobby project created out of a need to export a large quantity of TCX files from
Polar Flow.

Original repo for python2.7 [gabrielreid/polar-flow-export](https://github.com/gabrielreid/polar-flow-export)
