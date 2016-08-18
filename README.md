# git-templates

GIT Templates for repositories.

## Usage

To run the utility, [Node.js](https://nodejs.org) version 5 or above is required. (no additional packages required).
```
curl -sSL http://r.cowtech.it/git-template-setup | sh -s -- [TEMPLATE] [CONFIGURATION]
```

Where:

* `TEMPLATE`: Is the name of the template, like `ruby-gem`. 

    To see all the available templates, run: 
  
    ```  
    curl -sSL http://r.cowtech.it/git-template-setup | sh -s -- -l
    ``` 

* `CONFIGURATION`: A path to JSON file with values for the following fields:  
    * `name`: The name of the project. Defaults to the basename of the current directory.
    * `namespace`: The main module/namespaced of the project. Default is titleized version of `name`.
    * `env`: The name of a env variables namespace. Default is uppercased and underscorized version of `name`.
    * `year` (*current_year*): The current year for copyright notices. Default is the current year.
    * `author`: Author of the project. Default is **Shogun**.
    * `authorEmail`: Author's email. Default is **shogun@cowtech.it**.
    * `githubUser`: GitHub username of the author. Default is **ShogunPanda**.
    * `summary`: Short description of the project.
    * `description`: Long description of the project. Defaults to `summary`.
    * `url`: URL of the main page for the project. Defaults to `https://github.com/{{githubUser}}/{{name}}`.
    * `docsUrl`: URL of the main page for the project. Defaults to `https://{{githubUser}}.github.io/{{name}}`.
    
    This will default to the `.git-template.json` in the current folder.
    
To use authenticated API calls, provide the GITHUB_AUTH variable in the form `$USER:$PASSWORD` or `$USER:$PERSONAL_ACCESS_TOKEN`.
