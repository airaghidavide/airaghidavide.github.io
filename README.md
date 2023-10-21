<a name="readme-top"></a>

# Create a personal website

[![deploy_website](https://github.com/airaghidavide/airaghidavide.github.io/actions/workflows/deploy_website.yml/badge.svg)](https://github.com/airaghidavide/airaghidavide.github.io/actions/workflows/deploy_website.yml)


<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#intro">Intro</a></li>
    <li><a href="#prerequisites">Prerequisites</a></li>
    <li><a href="#startup">Startup</a></li>
    <li><a href="#customize-your-website">Customize your website</a></li>
    <li><a href="#test-locally">Test locally</a></li>
    <li><a href="#enable-github-pages">Enable GitHub Pages</a></li>
    <li><a href="#access-your-website">Access your website</a></li>
  </ol>
</details>

## Intro

You can use this project to create a simple personal static website using [MkDocs Material](https://github.com/squidfunk/mkdocs-material) and deploying it for free with GitHub Actions. You will also host your website for free using GitHub Pages. MkDocs Material is a popular static site generator that allows you to create elegant and user-friendly documentation or personal websites.

## Prerequisites

Before begin, make sure you have the following prerequisites in place:

* A GitHub account: you'll need a GitHub account to host your website using GitHub Pages.
* Git: you should have Git installed on your local machine.
* Markdown knowledge: familiarity with Markdown is a plus, as MkDocs uses Markdown for content.
* Poetry as dependencies manager

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Startup

Use this command to initialize the project. This command also install pre-commit checks to guarantee code quality.

```bash
make init_project
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Customize your website

You can now customize your website by editing the mkdocs.yml file to define the structure and theme of your site.

## Test locally

Run this command to check out your site on localhost

```bash
make docs_launch
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Enable GitHub Pages

1. Go to your GitHub repository and navigate to the "Settings" tab.
2. Scroll down to the "GitHub Pages" section.
3. In "Build and deployement" select Github Actions
4. Click "Save."

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Access your website

After a few moments, your website will be available at https://your-username.github.io (replace your-username with your GitHub username).
You have successfully created a personal website using MkDocs Material, deployed it for free with GitHub Actions, and hosted it for free using GitHub Pages. You can now continue to customize your website, add content, and share your knowledge with the world!

<p align="right">(<a href="#readme-top">back to top</a>)</p>
