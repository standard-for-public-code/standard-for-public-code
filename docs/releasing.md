# Releasing a new version of the Standard for public code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2021-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

1. Review state of the 'develop' branch
    - Ensure all changes intended for release are merged
    - Invite a proofread of the current state of the branch
        - If new dashes are introduced, check if the language can be simplified to remove them in favor of more simple sentences. If a complex sentence is needed, see if the dash can be replaced with other punctuation. If a dash is truly the best expression of ideas, then follow the [Chicago Manual of Style](https://en.wikipedia.org/wiki/Dash#En_dash_versus_em_dash).
2. Create a release branch
    - From 'develop', `git switch -c "release-$MAJOR.$MINOR.$PATCH"`
    - Push the branch, `git push -u origin release-$MAJOR.$MINOR.$PATCH`
3. Update the new release
    - [ ] Update [`AUTHORS.md`](../AUTHORS.md) with new contributors
    - [ ] Update [`CHANGELOG.md`](../CHANGELOG.md)
    - [ ] Perform extra pass on diff to the 'main' branch
        - run `script/generate-review-template.sh` and commit updated `docs/review-template.html`
        - update `docs/standard-for-public-code.html` with the new text from the review template, updating any status changes as a result
        - Reread any section or paragraph to ensure wording changes still fit the whole and do not contain grammar or spelling errors
        - Ensure [fonts](https://brand.publiccode.net/typography/) are installed, see: `script/ensure-font.sh`
        - Check the rendered `.pdf` using `script/pdf.sh rc1`
          - Ensure no link collisions exist
          - Check the page breaks, possibly removing or adding page-break CSS, for example: `<p style="page-break-after: always;"></p>`
        - If needed, commit fixes and repeat extra pass
    - [ ] Push branch, compare with 'main' branch, i.e.: https://github.com/publiccodenet/standard/compare/main...release-$MAJOR.$MINOR.$PATCH
        - Request review from multiple reviewers, especially a proofreader
        - Reviewers will create issues for shortcomings found which would not prevent release
        - If needed for release, reviewers may create pull requests to resolve issues
        - Re-request reviews if additional pull requests are merged into release branch
    - [ ] Run the to-archive-org.sh script
4. Create GitHub release with the release notes and version number
    - [ ] `git tag trigger-$MAJOR.$MINOR.$PATCH`
    - [ ] `git push --tags` (see: `../.github/workflows/release-on-tag.yml`)
    - [ ] delete local tag: `git tag -d trigger-$MAJOR.$MINOR.$PATCH`
5. [Send the files for print to the printer](printing.md)
    - [ ] Cover file
    - [ ] Inside pages PDF
6. Ping [translation](https://github.com/publiccodenet/community-translations-standard) contributors
