#! /bin/bash
# Copyright (C) Sebastian Pipping <sebastian@pipping.org>
# Licensed under CC0

{
    cat <<HEADER
Winamp libre archive
--------------------

About
~~~~~
The repository is dedicated to archiving
https://en.wikipedia.org/wiki/Free_software[software libre]
related to
https://en.wikipedia.org/wiki/Winamp[Winamp], e.g. Winamp plugins.

Content
~~~~~~~
HEADER
    find plugins sdk -type d \
        | sort \
        | sed \
            -e 's,\(.\+\),\1[\1],' \
            -e 's,^\(.*\)\[[^/]\+/,*\1[,' \
            -e 's,^\(.*\)\[[^/]\+/,*\1[,' \
            -e 's,^\(.*\)\[[^/]\+/,*\1[,' \
            -e 's,  ,*,g' \
            -e 's,^,*,g' \
            -e 's,^\(\*\+\),\1 link:,g'
} > README.asc
