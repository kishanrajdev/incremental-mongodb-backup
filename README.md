## Incremental Mongodb backup

The script is useful to get the incremental backup ranges from 0 - 9 (stores upto 10 backups). 

It stores backup based on date. If today is 28th then 28 % 10 = 8, so it creates directory dbname_8 to store the backup. If backup already exist for particular name, it overrides the old backup and stores new.
