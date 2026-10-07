# discovery-web-piscine

Project 00 of the 42 Web Piscine: Linux, Git, GitHub and SSH fundamentals.

This repository is the hands-on part of the project. It was used to practice the full Git cycle, from a local repository on my machine to a public remote on GitHub, and then to switch authentication from HTTPS to SSH.

## Why Git Makes Development Easier

### It safeguards code

Every commit is a complete snapshot of the project at a specific moment. If I break something, I don't have to remember what the file looked like before: I can compare against any earlier commit or go back to it.

Because the same history also lives on GitHub, losing my laptop doesn't mean losing the project. The remote is an off-site copy of every version, not only the latest one.

The staging area adds another layer of control. Nothing goes into a commit unless I explicitly run `git add` on it, so I decide exactly what each snapshot contains, even if I edited many files.

### It tracks history

Each commit records who made the change, when it was made, what changed, and, through the commit message, why. `git log` turns this into a readable timeline, and `git diff` shows the exact lines that changed between any two points.

When a bug appears, this history makes it possible to find the commit that introduced it instead of guessing.

### It enables team collaboration

Several people can work on the same project at the same time without overwriting each other's work. Each developer has a full copy of the repository, works on their own branch, and shares changes through a common remote such as GitHub.

Git merges that work together. When two people change the same lines, Git stops and shows the conflict instead of silently discarding one version. GitHub builds on this with pull requests, where changes can be reviewed before they are merged.

## Workflow

```
edit  →  git add  →  git commit  →  git push
```

| Step | Command | What happens |
|------|---------|--------------|
| Edit | any editor | The working directory changes; `git status` shows the file as modified or untracked |
| Stage | `git add <file>` | The change is placed in the staging area (the index) |
| Commit | `git commit -m "message"` | A snapshot of the staged content is saved in the local history |
| Push | `git push` | Local commits are sent to the remote branch `origin/main` |

## Authentication: from HTTPS to SSH

The repository was first pushed over HTTPS. GitHub no longer accepts account passwords for Git operations, so the push only succeeded with a Personal Access Token in place of the password, and the token had to be entered on every push.

For Exercise 03 the remote was switched to SSH:

```bash
ssh-keygen -t ed25519
ssh -T git@github.com
git remote set-url origin git@github.com:AshrafAmr962/discovery-web-piscine.git
```

With SSH, authentication uses a key pair. The private key stays on my machine and GitHub stores only the public key, so pushes are authenticated automatically without typing a password or token. The private key is never shared or committed.

## Author

Ashraf, 42 Amman ([@AshrafAmr962](https://github.com/AshrafAmr962))
