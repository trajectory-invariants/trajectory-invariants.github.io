This repository builds the invariants website at: https://robotgenskill.pages.gitlab.kuleuven.be/public_code/invariants_website

The website is intended to 
- shortly explain the main features and use of the invariants
- explain the methods that we use: screw theory, optimization
- provide documentation for using the Matlab and Python code
- showcase applications of invariant descriptors
- point towards major publications

## Building the website locally

To work locally with this project, you'll have to follow the steps below:

1. Clone this repository.

   ```shell
   git clone git@gitlab.kuleuven.be:robotgenskill/public_code/invariants_website.git
   ```

1. Install Hugo. 

   - **Windows**: Download the binaries of the [latest release](https://github.com/gohugoio/hugo/releases/latest). Scroll down on this page and download `hugo_extended_0.XXX.X_windows-amd64.zip` where XXX.X is the number of the latest version. If you are on your work computer, make the following folder and unzip and move the package at that location: `C:\Workdir\Programs\Hugo\`. 

   - **Ubuntu**: you can easily install Hugo through the terminal:

   ```shell
   sudo apt install hugo
   ```

1. Open a terminal (or `git bash`) and navigate to where you cloned this repository.
1. Generate the website with the following command:

   ```shell
   hugo server
   ```

1. Open a browser to view the website, e.g. at `http://localhost:1313/`
1. Add or change content. The website will update automatically.
1. Optional. Generate and write the HTML files of the website:

   ```shell
   hugo
   ```

This command generates the `public/` folder which holds the static HTML files of the website, while `hugo server` only keeps the generated files in working memory.

Once you are satisfied with your local website, you can commit and push the changes to GitLab to update the public website.

## Technical background

The website is implemented with the [Hugo](https://gohugo.io) framework in combination with the [Hextra theme](https://github.com/imfing/hextra). The website is built using [GitLab Pages](https://about.gitlab.com/stages-devops-lifecycle/pages/) following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).

