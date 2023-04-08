# April 8, 2023

## Dashboard / Login branch
- `git checkout 2023-04-08`

### Fat Free Framework
- General structure
  - `config` directory should be outside the webserver's root
  - `assets` should be organized (js, css, img, etc.)
    - `js` might include a `lib` subdirectory for libraries that we include, like jQuery
- Routing
  - Creating routes in the `routes.cfg` file
  - We may split routes into separate files: `routes.cfg` for user pages, and `api.cfg` for API
- Templates 
  - https://fatfreeframework.com/3.8/views-and-templates#AQuickLookattheF3TemplateLanguage
- Controllers
  - Every route points to a public *method* in a controller
  - Using our PSR-4 **namespace** to access controller methods

### Building our app
- Data "mocks"
- InternalController
  - New folder: __src/Controller/Internal__ 
    creates namespace `\Qoverflow\Controller\Internal` automatically (PSR-4)
  - `InternalController` and sub-classes (`UsersController`)
  - Extending `InternalController` and the `beforeroute` and `afterroute` methods
  - Serving JSON or HTML snippet?

### By example:
- loading json
  - JS loads the data, then dynamically creates elements in the DOM
  - `$.getJson` jQuery shortcut
- loading html snippets
  - PHP ($f3) creates an html *snippet* and JS loads that into DOM
  - `.load(url)`