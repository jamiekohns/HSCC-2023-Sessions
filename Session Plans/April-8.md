# April 8, 2023

## Dashboard / Login branch
- `git checkout 2023-04-08`

### Fat Free Framework
- General structure
- Routing
- Templates 
  - https://fatfreeframework.com/3.8/views-and-templates#AQuickLookattheF3TemplateLanguage
- Controllers

### Building our app
- Data "mocks"
- InternalController
  - routes

- By example:
  - loading json
    - JS loads the data, then dynamically creates elements in the DOM
    - `$.getJson` jQuery shortcut
  - loading html snippets
    - PHP ($f3) creates an html __snippet__ and JS loads that into DOM
    - `.load(url)`