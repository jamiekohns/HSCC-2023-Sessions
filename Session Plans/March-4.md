## SESSION PLAN
- Re-introduce our dev environments
    - added user.txt files to environments
- Go through github setup for anyone that missed it
    - `ssh-keygen`
    - `cat ~/.ssh/id_rsa.pub`
    - copy/paste into github->settings->ssh/gpg keys
- Use IDE terminal to install mysq-client

```
sudo apt update
sudo atp install mysql-client
```
- create `q_overflow` database
- create user for `q_overflow`

---

### Create database schema for q_overflow
Since the schema for the database was not saved in the repo for last year's solution, we will need to 
re-build it. We'll do this by looking at the code (Models) to identify tables and columns.
