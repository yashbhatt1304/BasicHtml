### This is Basic HTML code for CICD pipeline cofiguration

###### This code contains two ways of checking the commit.

1. Bash
For checking New Commit through Bash script, follow the [checkCommitBash.sh](checkCommitBash.sh) file only and schedule the cron job as mentioned in cronJob.txt file.

2. Python
For checking New Commit through python, follow the [checkCommitPython.py](checkCommitPython.py) and then [checCommit.sh](checkCommit.sh) file and then schedule the cron job as mentioned in cronJob.txt file.