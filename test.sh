#!/bin/bash
for x in {1..40}; do echo $x; cat ./test/$x | formail -zcxSubject | perl -MEncode -ne 'print encode ("utf8",decode ("MIME-Header",$_ ))'; cat ./test/$x | ./mime_encoder -h Subject;  printf '\n\n'; done;
for x in {1..40}; do echo $x; cat ./test/$x | formail -zcxFrom | perl -MEncode -ne 'print encode ("utf8",decode ("MIME-Header",$_ ))'; cat ./test/$x | ./mime_encoder -h From;  printf '\n\n'; done;
for x in {1..40}; do echo $x; cat ./test/$x | formail -zcxTo | perl -MEncode -ne 'print encode ("utf8",decode ("MIME-Header",$_ ))'; cat ./test/$x | ./mime_encoder -h To;  printf '\n\n'; done;
