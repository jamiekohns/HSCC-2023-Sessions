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
sudo apt install mysql-client
```

Create Database:
```
create database q_overflow;
```
Create User: 
```
CREATE USER 'q_user'@'%' IDENTIFIED BY 'PASSWORD';
```
Grant priveleges:
```
GRANT ALL PRIVILEGES ON q_overflow.* TO 'q_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

---

### Create database schema for q_overflow
Since the schema for the database was not saved in the repo for last year's solution, we will need to 
re-build it. We'll do this by looking at the code (Models) to identify tables and columns.
