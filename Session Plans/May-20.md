# May 20

## A.I. in programming
- Who has used AI (Chat GPT, etc.)? 
- Used in programming? (how?)

## Keys to Successful Prompts
- GPT is very good at understanding prompts, but you need to be clear and careful
  - When describing code, use 'coding' language:
    - "Use the variable $answer"
    - "Load content into elements with class .card.answer"
    - "Extract the function"
  - Work interavely: 
    - give the AI the the information
    - describe what you want
    - ask for a simple version of what you want
    - ask for increasingly more complex _iterations_

## Example
```
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GPT DEMO</title>
    <link rel="stylesheet" href="/assets/bootstrap-5.1.3-dist/css/bootstrap.css" type="text/css" />
    <script src="/assets/jquery/jquery-3.6.0.min.js"></script>
    <script src="/assets/bootstrap-5.1.3-dist/js/bootstrap.js"></script>
    <script src="https://unpkg.com/feather-icons"></script>
    <link rel="stylesheet" href="/assets/styles.css" type="text/css" />
    <script src="/assets/app.js"></script>
    <script src="/assets/moment.js"></script>
    <script src="/assets/livestamp.js"></script>
    <script>
        const baseUrl = "";
    </script>
</head>

<body>
    <div class="container">

        <div class="card question" data-id="123">
            <div class="card-header">
                <div class="question-header">
                    <h5 class="card-title">
                        <a href="#">Sample Question</a>
                    </h5>
                    <div class="card-subtitle">
                        <div class="user-panel">
                            By: Demo User
                        </div>
                    </div>
                    <div class="question-actions float-end">
                        <a href="#" class="card-link">Add A
                            Comment</a>
                        <a href="#" class="card-link">Add An
                            Answer</a>
                    </div>

                    <div class="answers">

                    </div>

                    <div class="comments">

                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html
```

`I have an HTML document: CODE`

`I need javascript that loads dynamic content into the div.answers element from the url /answers`

`the url /answers requires a query string argument "id". The "id" is found in a parent element with classes "card question" and the attribute "data-id"`

`now, extract the function, and delegate all future elements that may be loaded daynamically, with the class .card.question to load this content`


## Design Keys for Success
If you know you need to introduce variables, make sure the base code you supply has accounted for that. 
Otherwise, it will be more diffcult to add in prompts.

Don't expect AI to write your app entirely- especially since we are using a complex framework and an API that the API probably doesn't know about.

Check the code- you must review the code it generates, and test that it actually works. AI can generate junk code that may appear to be functional, but may have errors.

Remember that the process is _iterative_ - it gets better through each iteraction cycle (prompt). But also: if you find that you are generating similar code through multiple chats (e.g. one for questions, one for answers, but the javascript is mostly the same), you might need to think more globally, and how you can ask the AI for code that performs similar tasks, using just one function (extraction)- using additional variables or triggers.
