# Github action for github-release cli

A simple github action wrapper around github-release cli https://github.com/aktau/github-release

## Usage
Example: create version 0.1.0 release from master branch
```
action "Github Release" {
  uses = "kckc/action-githubRelease"
  secrets = ["GITHUB_TOKEN"]
  args = "release -t 0.1.0 -c master"
} 
```

## github-release Usage
```
Usage: github-release [global options] <verb> [verb options]

Global options:
        -h, --help           Show this help
        -v, --verbose        Be verbose
        -q, --quiet          Do not print anything, even errors (except if --verbose is specified)
            --version        Print version

Verbs:
    delete:
        -s, --security-token Github token (required if $GITHUB_TOKEN not set)
        -u, --user           Github repo user or organisation (required if $GITHUB_USER not set)
        -r, --repo           Github repo (required if $GITHUB_REPO not set)
        -t, --tag            Git tag of release to delete (*)
    download:
        -s, --security-token Github token ($GITHUB_TOKEN if set). required if repo is private.
        -u, --user           Github repo user or organisation (required if $GITHUB_USER not set)
        -r, --repo           Github repo (required if $GITHUB_REPO not set)
        -l, --latest         Download latest release (required if tag is not specified)
        -t, --tag            Git tag to download from (required if latest is not specified) (*)
        -n, --name           Name of the file (*)
    edit:
        -s, --security-token Github token (required if $GITHUB_TOKEN not set)
        -u, --user           Github repo user or organisation (required if $GITHUB_USER not set)
        -r, --repo           Github repo (required if $GITHUB_REPO not set)
        -t, --tag            Git tag to edit the release of (*)
        -n, --name           New name of the release (defaults to tag)
        -d, --description    New release description, use - for reading a description from stdin (defaults to tag)
            --draft          The release is a draft
        -p, --pre-release    The release is a pre-release
    info:
        -s, --security-token Github token ($GITHUB_TOKEN if set). required if repo is private.
        -u, --user           Github repo user or organisation (required if $GITHUB_USER not set)
        -r, --repo           Github repo (required if $GITHUB_REPO not set)
        -t, --tag            Git tag to query (optional)
        -j, --json           Emit info as JSON instead of text
    release:
        -s, --security-token Github token (required if $GITHUB_TOKEN not set)
        -u, --user           Github repo user or organisation (required if $GITHUB_USER not set)
        -r, --repo           Github repo (required if $GITHUB_REPO not set)
        -t, --tag            Git tag to create a release from (*)
        -n, --name           Name of the release (defaults to tag)
        -d, --description    Release description, use - for reading a description from stdin (defaults to tag)
        -c, --target         Commit SHA or branch to create release of (defaults to the repository default branch)
            --draft          The release is a draft
        -p, --pre-release    The release is a pre-release
    upload:
        -s, --security-token Github token (required if $GITHUB_TOKEN not set)
        -u, --user           Github repo user or organisation (required if $GITHUB_USER not set)
        -r, --repo           Github repo (required if $GITHUB_REPO not set)
        -t, --tag            Git tag to upload to (*)
        -n, --name           Name of the file (*)
        -l, --label          Label (description) of the file
        -f, --file           File to upload (use - for stdin) (*)
        -R, --replace        Replace asset with same name if it already exists (WARNING: not atomic, failure to upload will remove the original asset too)