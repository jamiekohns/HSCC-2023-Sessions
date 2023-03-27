# March 11 2023

## New Team Member
**Welcome, Siddharth!**
- Quick dev environment intro

## IDE Updates & Plugin
### PHP
- `sudo`
- `apt`
    - `sudo apt update`
- install php-cli
    - `sudo apt install php-cli`
### Composer
- https://getcomposer.org/download/
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```
### Thunder Client plugin
- Make API requests
- Last year's api key

## Database Schema
- Review tables
- Are there still tables that need to be created?
- What about our caching table?
 - What we used caching for last year
 - Are there better approaches?

## Internal API
- What is an 'internal' API?
 - Endpoints usually return data only (no HTML)
 - JSON data to be consumed by JavaScript that builds HTML and inserts it into existing page
- How can a well-built internal API help us develop our solution?
 - "No page load" requirements
 - Automatic update (also requirement)
 - Nested elements
- Security Issues
 - limiting the data that is sent - model methods
 - limiting what actions can be performed via AJAX, and "read-only" endpoints
- Division of labor: what each member might be responsible ffor

## Theory: Separation of Concerns
> In computer science, separation of concerns is a design principle for separating a computer program into distinct sections. Each section addresses a separate concern, a set of information that affects the code of a computer program.

Example: HTML, CSS, and JavaScript

How we already implementing this in our application?
