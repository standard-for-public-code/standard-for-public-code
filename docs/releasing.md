# Releasing a new version of the Standard for Public Code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2021-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS -->

This step-by-step guide walks through the process of preparing a release for Standard for Public Code, from reviewing the current state of the `develop` branch to sending the final files for print.
It should cover everything needed to ensure the release is properly updated, reviewed, and tagged.
This includes updating relevant documentation and publishing the release.
Additionally, it includes final tasks like preparing print materials and notifying translation contributors.

Releases are created by automation when triggered by tags pushed to the repository.
When the release branch is expected to be good enough to create a release, the maintainers first create and push a release candidate tag.
If the release artifacts created by the automation look good, then the maintainers create and push a release tag.

1. Review state of the 'develop' branch
    - Ensure all changes intended for release are merged
    - Invite a proofread of the current state of the branch
        - If new dashes are introduced, check if the language can be simplified to remove them in favor of more simple sentences. If a complex sentence is needed, see if the dash can be replaced with other punctuation. If a dash is truly the best expression of ideas, then follow the [Chicago Manual of Style](https://en.wikipedia.org/wiki/Dash#En_dash_versus_em_dash).
2. Create a release branch
    - From 'develop', `git switch -c "release-$MAJOR.$MINOR.$PATCH"`
    - Push the branch, `git push -u origin release-$MAJOR.$MINOR.$PATCH`
    - Open a DRAFT pull request from the new branch in to main so that others can easily review, discuss, and add commits to the branch
3. Update the new release
    - [ ] Update [`AUTHORS.md`](../AUTHORS.md) with new contributors
    - [ ] Update [`RELEASE_NOTES.md`](../RELEASE_NOTES.md)
    - [ ] Update [`roadmap.md`](roadmap.md)
    - [ ] Perform extra pass on diff to the 'main' branch
        - run `script/generate-review-template.sh` and commit updated `docs/review-template.html`
        - update `docs/standard-for-public-code.html` with the new text from the review template, updating any status changes as a result
        - Reread any section or paragraph to ensure wording changes still fit the whole and do not contain grammar or spelling errors
        - Ensure [fonts](https://brand.publiccode.net/typography/) are installed, see: `script/ensure-font.sh`
        - Check the rendered `.pdf` using `script/pdf.sh rc1`
          - Ensure no link collisions exist
          - Check the page breaks, possibly removing or adding page-break CSS, for example: `<p style="page-break-after: always;"></p>`
        - If needed, commit fixes and repeat extra pass
    - [ ] Push branch, compare with 'main' branch, i.e.: `https://github.com/standard-for-public-code/standard-for-public-code/compare/main...release-$MAJOR.$MINOR.$PATCH`
        - Request review from multiple reviewers, especially a proofreader
        - Reviewers will create issues for shortcomings found which would not prevent release
        - If needed for release, reviewers may create pull requests to resolve issues
        - Re-request reviews if additional pull requests are merged into release branch
    - [ ] Run the `to-archive-org.sh` script
        - Ensure the `urlencode` command is in the `PATH`
          - On Debian-like systems, `sudo apt-get install gridsite-clients`
          - See also: [man page for gridsite-clients urlencode](https://manpages.debian.org/testing/gridsite-clients/urlencode.1.en.html)
        - Run `script/to-archive-org.sh`
          - Takes 30 to 45 minutes to complete because of rate throttling
4. Create GitHub release candidate with the release notes and a release candidate version number
    - [ ] `git tag trigger-$MAJOR.$MINOR.$PATCH-rc1`
    - [ ] `git push --tags` (see: `../.github/workflows/release-on-tag.yml`);
    - [ ] delete local tag: `git tag -d trigger-$MAJOR.$MINOR.$PATCH-rc1`
    - [ ] Review the release candidate artifacts
        - If needed, fix and create another `-rcX` release, incrementing the release candidate number
        - Else the latest release candidate is determined to be of sufficient quality, proceed to create the release
5. Create GitHub release with the release notes and version number
    - [ ] `git tag trigger-$MAJOR.$MINOR.$PATCH`
    - [ ] `git push --tags` (see: `../.github/workflows/release-on-tag.yml`); this will close the DRAFT pull request
    - [ ] delete local tag: `git tag -d trigger-$MAJOR.$MINOR.$PATCH`
6. Send the files for print to the printer for the [book](printing.md), and [checklist](printing-checklist.md)
    - [ ] Cover file: `standard-cover-$MAJOR.$MINOR.$PATCH.pdf`
    - [ ] Inside pages PDF: `standard-for-public-code-print-$MAJOR.$MINOR.$PATCH.pdf`
    - [ ] Folded checklist: `standard-checklist-folded-$MAJOR.$MINOR.$PATCH.pdf`
7. Ping [translation](https://github.com/standard-for-public-code/community-translations-standard) contributors
