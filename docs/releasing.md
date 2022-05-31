# Releasing a new version of the Standard for public code

1. Review state of the 'develop' branch
    - Ensure all changes intended for release are merged
    - Invite a proofread of the current state of the branch
        - If new dashes are introduced, check if the language can be simplified to remove them in favor of more simple sentences. If a complex sentece is needed, see if the dash can be replaced with other punction. If a dash is truly the best expression of ideas, then follow the [Chicago Manual of Style](https://en.wikipedia.org/wiki/Dash#En_dash_versus_em_dash).
2. Create a release branch
    - From 'develop', `git checkout -b "release-$MAJOR.$MINOR.$PATCH"`
    - Push the branch, `git push -u origin release-$MAJOR.$MINOR.$PATCH`
3. Update the new release
    - [ ] Update version number in `_config.yml` and `README.md`
    - [ ] Update [`AUTHORS.md`](../AUTHORS.md) with new contributors
    - [ ] Update [`CHANGELOG.md`](../CHANGELOG.md)
    - [ ] Perform extra pass on diff to the 'main' branch
        - Reread any section or paragraph to ensure wording changes still fit the whole and do not contain grammar or spelling errors
        - If needed, commit fixes and repeat extra pass
    - [ ] Push branch, open a pull request to the 'main' branch
        - Request review from multiple reviewers, especially a proofreader
        - Reviewers will create issues for shortcomings found which would not prevent release
        - If needed for release, reviewers may create PRs to resolve issues
        - Re-request reviews if additional PRs are merged into release branch
    - [ ] Once reviews are complete, merge to 'main'
    - [ ] Switch to the 'main' branch, `git pull` and `git status`
    - [ ] Generate new PDFs
        - Ensure [fonts](https://brand.publiccode.net/typography/) are installed
        - Serve html content with `script/serve.sh`
        - Optionally, for a visual pre-check, navigate to http://127.0.0.1:4000/ in a browser
        - In a separate terminal than `script/serve.sh`, generate `standard.pdf` and `standard-cover.pdf` with `script/pdf.sh`
        - Rename `standard.pdf` to standard-for-public-code-$MAJOR.$MINOR.$PATCH.pdf`
4. Create GitHub release with the release notes and version number
    - [ ] `git tag $MAJOR.$MINOR.$PATCH`
    - [ ] `git push --tags`
    - [ ] From https://github.com/publiccodenet/standard/tags select "create release"
        - Title the release
        - Add changelog bullets
        - Drag-and-drop the generated .pdf into the assets
5. Update 'develop' with a merge from 'main'
6. [Send the files for print to the printer](printing.md)
    - [ ] Cover file
    - [ ] Inside pages PDF
