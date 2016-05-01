#!/bin/bash
# MongoDB incremental backup

#get increment no. between 0 to 9 based on date
increment_no=$(date +"%d");
increment_no=$((increment_no % 10));

# creting directory for each backup
dir_name="test_$increment_no";
[ ! -d "$dir_name" ] && mkdir "$dir_name";

#mongodump to export backup
mongodump --db test --authenticationDatabase admin -u root -p 'root' --gzip -o ~/dump/$dir_name;

