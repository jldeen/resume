<p align="center">
    <img src="https://github.com/jldeen/resume/actions/workflows/static-web-app-ci-cd.yaml/badge.svg" alt="Azure Static Web Apps CI/CD">
    <img src ="https://img.shields.io/github/repo-size/jldeen/resume" alt="Repository Size">
    <img src ="https://img.shields.io/tokei/lines/github.com/jldeen/resume" alt="Lines of Code">
    <img src ="https://img.shields.io/github/last-commit/jldeen/resume" alt="Last Commit">
    <img src ="https://img.shields.io/github/issues/jldeen/resume?color=important" alt="Open Issues">
    <img src ="https://img.shields.io/github/issues-pr/jldeen/resume?color=yellowgreen" alt="Open Pull Reqeusts">
    <img src ="https://img.shields.io/github/license/jldeen/resume" alt="License">
</p>

# Jessica Deen Resume
This is the current home of [Jessica Deen's Resume](https://resume.jessicadeen.com), which like most resumes, began as a Word document back when `doc` was the default Microsoft Word extension and Clippy offered you typing suggestions. As of April 2022, the resume has been converted to run on [Hugo](https://gohugo.io/) and is powered by [Azure Static WebApps](https://azure.microsoft.com/services/app-service/static/?WT.mc_id=opensource-00000-jessde#overview).

The main goal of converting the resume from print to web interface is to demonstrate skills and knowledge stated in said resume first hand. 

As an unrelated bonus, this online resume also supports users' OS preference when it comes to light/dark themes, and allows for users to override their preference as desired.

## Deployment

This site uses GitHub Actions to deploy to Azure Static Web Apps. The cool thing is Azure Static Web Apps will even setup a GitHub Actions workflow for you and supports testing environments by default. This means each time you open a PR, your code changes will be automatically deployed to that PR / staging environment where you can run your acceptance tests / validation tests / visual tests, etc. 

You can learn about how to get started with Hugo and Azure Static Web Apps [here](https://docs.microsoft.com/azure/static-web-apps/publish-hugo?WT.mc_id=devops-00000-jessde). 

Please [submit an issue](https://github.com/jldeen/resume/issues) if you encounter any problems.
