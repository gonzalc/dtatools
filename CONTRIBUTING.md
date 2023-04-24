# Behavior

# Style

# How to work with Git
1. git checkout main
1. git pull
1. git checkout -b \<label>-\<issue#>-\<branch name>
1. git add .  
<mark style="background-color: #FFFF00">add/stage all changes to the branch in previous step; typically add only the files related to a specific fix</mark>
1. git commit  
    > to mention subject/description of changes; each commit should aim to fix one issue at a time
1. git checkout main
1. git pull
1. git checkout \<label>-\<issue#>-\<branch name>
1. git merge main
1. git checkout main
1. git merge \<label>-\<issue#>-\<branch name>
1. git pull
1. git push
1. git branch -d \<label>-\<issue#>-\<branch name>
    > remove the branch # note do not need to push branch to github, unless collaborating with others on a bug/feature

# Pull requests
G