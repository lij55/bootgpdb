#!/bin/bash 

for r in `seq 1 22`; do
    (time psql -U postgres -f queries/$r.sql test) > result_$r.txt 2>&1
done