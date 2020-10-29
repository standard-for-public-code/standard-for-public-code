# Contributing to this standard

🙇‍♀️ Thank you for contributing!

We understand that a standard like this can only be set in collaboration with as many public technologists, policy makers and interested folk as possible. Thus we appreciate your input, enjoy feedback and welcome improvements to this project and are very open to collaboration.

We love issues and pull requests from everyone. If you're not comfortable with GitHub, you can email use your feedback at <info@publiccode.net>.

## Problems, suggestions and questions in issues

Please help development by reporting problems, suggesting changes and asking questions. To do this, you can [create a GitHub issue](https://help.github.com/articles/creating-an-issue/) for this project in the [GitHub Issues for the Standard for Public Code](https://github.com/publiccodenet/standard/issues).

You don't need to change any of our code or documentation to be a contributor!

## Documentation and code in pull requests

If you want to add to the documentation or code of one of our projects you should make a pull request.

If you never used GitHub, get up to speed with [Understanding the GitHub flow](https://guides.github.com/introduction/flow/) or follow one of the great free interactive courses in the [GitHub learning lab](https://lab.github.com/) on working with GitHub and working with MarkDown, the syntax this project's documentation is in.

This project is [licensed CC-0](LICENSE.md), which essentially means that the project, along with your contributions is in the public domain in whatever jurisdiction possible, and everyone can do whatever they want with it.

### 1. Make your changes

This project uses the [GitFlow branching model and workflow](https://nvie.com/posts/a-successful-git-branching-model/). When you've forked this repository, please make sure to create a feature branch following the GitFlow model.

Add your changes in commits [with a message that explains them](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message). Document choices or decisions you make in the commit message, this will enable everyone to be informed of your choices in the future.

If you are adding code, make sure you've added and updated the relevant documentation and tests before you submit your pull request. Make sure to write tests that show the behavior of the newly added or changed code.

### 2. Pull request

When submitting the pull request, please accompany it with a description of the problem you are trying to solve and the issue numbers that this pull request fixes.

### 3. Improve

All contributions have to be reviewed by someone.

It could be that your contribution can be merged immediately by a maintainer. However, usually, a new pull request needs some improvements before it can be merged. Other contributors (or helper robots) might have feedback. If this is the case the reviewing maintainer will help you improve your documentation and code.

If your documentation and code have passed human review, it is merged.

### 4. Celebrate

Your ideas, documentation and code have become an integral part of this project. You are the open source hero we need!

In fact, feel free to open a PR to add your name to the [`AUTHORS`](AUTHORS.md) file and get eternal attribution.

## Releasing a new version

1. Review state of the 'develop' branch
    - Ensure all changes intended for release are merged
2. Create a release branch
    - From 'develop', git checkout -b "release-$MAJOR.$MINOR.$PATCH"
3. Update the new release
    - [ ] Update version number in `_config.yml` and `README.md`
    - [ ] Update [`AUTHORS.md`](AUTHORS.md) with new contributors
    - [ ] Update [`CHANGELOG.md`](CHANGELOG.md)
    - [ ] Perform extra pass on diff to the 'master' branch
        - Reread any section or paragraph to ensure wording changes still fit the whole and do not contain grammar or spelling errors
        - If needed, commit changes and repeat extra pass
    - [ ] Push branch, open a pull request to the 'master' branch
        - Request review from multiple reviewers, especially a proofreader
    - [ ] Generate new PDF of the primary content
        - Serve html content with `script/serve.sh`
        - Optionally, for a visual pre-check, navigate to http://127.0.0.1:4000/ in a browser
        - Generate the pdf with `script/pdf.sh`
    - [ ] Create new cover for print
    - [ ] Create new cover for web PDF
    - [ ] Create PDF for GitHub release with front and back cover included
4. Send the files for print to the printer
    - [ ] Cover file
    - [ ] Inside pages PDF
5. Create GitHub release with the release notes and version number
    - [ ] tag as "$MAJOR.$MINOR.$PATCH"
6. Update 'develop' with a merge from 'master'

---

For more information on how to use and contribute to this project, please read the [`README`](README.md).
