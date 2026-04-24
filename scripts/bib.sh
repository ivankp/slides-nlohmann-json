#!/bin/bash

[ -d bib ] && \
find bib -type f -name '*.bib' \
| sed 's,^.*,\\addbibresource{&},'

