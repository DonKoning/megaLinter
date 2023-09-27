# Introduction
This repo is created in support of my blog post 'Achieve Code Consistency: MegaLinter Integration in Azure DevOps' on Microsoft Tech Community.

## Requirements
If you want to use this solution to lint your files when submitting a PR, the following prerequisites must be met:
- Project Settings | Pipelines | Settings | Protect access to repositories in YAML pipelines = Disabled

### Permissions for repositories
- Project Settings | Repositories | Settings | Security (for all or specific repos):
    Project Collection Build Service (OrgName) - Contribute to pull requests (Allow)
    Project Collection Build Service (OrgName) - Read (Allow)

### Branch Policy
Configure a branch policy for the main branch in the repo that you want to have linted.
    Repos | Branches | Main | Branch Policies | Build Validation
        Select the Mega-linter pipeline in the central repo and set display name
        leave other settings default

# Testing
Create a branch in the source repo and make some changes. When submitting the PR the MegaLinter pipeline should run and report findings back to the PR as a comment.
