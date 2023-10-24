This repository builds the invariants website at: https://robotgenskill.pages.gitlab.kuleuven.be/public_code/invariants_website

The website is intended to 
- shortly explain the main features and use of the invariants
- explain the methods that we use: screw theory, optimization
- provide documentation for using the Matlab and Python code
- showcase applications of invariant descriptors
- point towards major publications

## Building the website locally

To work locally with this project, you'll have to follow the steps below:

1. Fork, clone or download this project.
1. [Install](https://gohugo.io/getting-started/installing/) Hugo.
1. Preview your project:

   ```shell
   hugo server
   ```

1. Open a browser to view the website, e.g. at `http://localhost:1313/`
1. Add or change content. The website will update automatically
1. Optional. Generate the website:

   ```shell
   hugo
   ```

This command generates the `public/` folder which holds the static HTML files of the website, while `hugo server` only keeps the generated files in working memory.

Once you are satisfied with your local website, you can commit and push the changes to GitLab to update the public website.



## Technical background

The website is implemented with the [Hugo](https://gohugo.io) framework in combination with the [Hextra theme](https://github.com/imfing/hextra). The website is built using [GitLab Pages](https://about.gitlab.com/stages-devops-lifecycle/pages/) following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).

