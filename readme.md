# Gamemaking Testy Besties
A fun little project to make the best worst game we can

Initial setup for git:
> - Git clone https://github.com/Tibbyr/GameTestyBesties

Some git basics
> - To create a new branch locally: Git branch branch-name
> - To upload your changes to github: Git push -u origin branch-name
> - To pull latest changes from github: Git pull origin main/branch-name

Basic Flow locally:
> - To fetch the changes first then manually merge: Git fetch origin, git merge branch-name (merges to current checked out branch)
> - Ensure you have the latest changes by pulling from branch or main: git pull origin branch-name
> - Work on your own branch: git switch -c new-feature
> - Check you're on your own branch: git branch
> - Checks what status the changes are in: git status
> - Add to staging (ready to commit to local branch): git add .
> - Commit changes to local branch: git commit -m "Insert meaningful message here"
> - Would appreciate if you make a pull request before pushing changes to feature branches, but otherwise can use: git push origin branch-name
> - Don't push to main til we review it together lol
