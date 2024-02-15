This repository builds the Trajectory Invariants website at: [https://trajectory-invariants.github.io/](https://trajectory-invariants.github.io/)

The website is intended to 
- explain what trajectory invariants are
- explain the underlying methods that we use: screw theory, optimization
- explain the main features of the software
- provide documentation for using the Matlab and Python code
- showcase applications of invariant descriptors
- point towards major publications

## Building the website locally

To work locally, you'll have to follow the steps below:

1. Clone this repository.

   ```shell
   git clone https://github.com/trajectory-invariants/trajectory-invariants.github.io.git
   ```

1. Install Hugo. 

   - **Windows**: Download the binaries of the [latest release](https://github.com/gohugoio/hugo/releases/tag/v0.120.4). Scroll down until you see `hugo_extended_0.120.4_windows-amd64.zip`, and download the zip file. Make the following folder and unzip and move the package to this location: `C:\Workdir\Programs\Hugo\`. 

   - **Ubuntu**: you can easily install the latest version of Hugo through the terminal:

      ```shell
      sudo snap install hugo
      ```

1. Open a terminal in Linux (or `git bash` in Windows) and navigate to where you cloned this repository. 

   ```shell
   cd trajectory-invariants.github.io
   ```

      - If you are in Windows you also need to add the Hugo folder to your path

         ```shell
         PATH=$PATH:/C/Workdir/Programs/Hugo/hugo_extended_0.120.4_windows-amd64
         ```

1. Generate the website with the following command:

   ```shell
   hugo server
   ```

1. Open a browser to view the website, e.g. at `http://localhost:1313/`
1. Add or change content. The website will refresh automatically.
1. (Optional) Generate and write the HTML files of the website:

   ```shell
   hugo
   ```

   This command generates the `public/` folder which holds the static HTML files of the website, while `hugo server` only keeps the generated files in working memory. For the public website, this step is done by a GitHub workflow action.

Once you are satisfied with the local website, you need to commit and push the changes to the remote GitHub repository to update the public website.

## Technical background

The website is implemented with the [Hugo](https://gohugo.io) framework in combination with the [Hextra theme](https://github.com/imfing/hextra). The website is built using a GitHub workflow following the steps defined in [`build-and-deploy.yml`](.github/build-and-deploy.yml).

## Suggestions for improvement?

You can submit an issue through https://github.com/trajectory-invariants/trajectory-invariants.github.io/issues
