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
- https://getcomposer.org/installer
- `curl`
    - `--output` option
- `php composer-setup.php --install-dir=bin --filename=composer`
- `mv composer.phar /usr/local/bin/composer`
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
