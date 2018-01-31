Harvester
=========

A wrapper around [hcl][1] that provides a command line interface similar to
[Timetasker][2].


## Usage
This command will submit a time entry of 4.5 hours for the “example” project:

	$ harvester \
	>    --project example \
	>    --time 4.5 \
	>    --date 2018-01-31 \
	>    --description "Worked on Harvester"

Only the `--project` option is required. Project aliases are defined by `hcl`.
The `--time` option will default to 7 hours if not specified, and `--date` will
default to the current day.


## Requirements

* [hcl][1]
* In order to use the `--date` option, [this patch to hcl is required][3].


## License
Copyright © 2018 Teddy Wing. Licensed under the GNU GPLv3+ (see the included
COPYING file).


[1]: https://github.com/zenhob/hcl
[2]: https://github.com/teddywing/timetasker
[3]: https://github.com/zenhob/hcl/pull/86
