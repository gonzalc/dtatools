# Behavior

consider using [strict mode](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/set-strictmode?view=powershell-7.3)

## Style

[Cmdlet Development Guidelines](https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/cmdlet-development-guidelines?view=powershell-7.3)

### Emoji

You cannot use highlighting in pure markdown and it's suggested to avoid in-line HTML/CSS, however you can bring attention to sections using [emoji's](https://emojipedia.org/symbols/). (e.g., ⚠️WARNING⚠️, 🔴IMPORTANT❗🔴 or 🔥NEW🔥)

| 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|
|[⚠️](https://emojipedia.org/warning/)|💭|🗯️|💬|💢|
|💤|🛑|🔇|🔈|🔉|
|🔊|📢|🔔|🔕|♿|
⏩|❗|‼️ |❓ |❔|

### Cross Platform Tips

[tips for writing cross platform powershell code](https://powershell.org/2019/02/tips-for-writing-cross-platform-powershell-code/)  

- Replace `env:` drive with the `[System.Environment]` class  
    | Windows Variable  |.Net Variable                            |
    |-------------------|-----------------------------------------|
    | $env:USERNAME     | [System.Environment]::UserName          |
    | $env:COMPUTERNAME | [System.Environment]::MachineName       |
    | $env:TEMP         | [System.IO.Path]::GetTempPath()         |
- Use the same case when manipulating environment variable        |
    | Success                                              | Failure                                              |
    |------------------------------------------------------|------------------------------------------------------|
    |$env:PATH                                             | $env:Path                                            |
    | [System.Environment]::GetEnvironmentVariable('PATH') | [System.Environment]::GetEnvironmentVariable('Path') | 
- **(OUTDATED)** Use Join-Path instead of assigning a full path in a string.
    > The reason was Linux and MacOS see '\\' as an escape character.  
    The cmdlet `Join-Path` converts the directory separator to the current platform.  
    An example is: `Join-Path -Path '\usr\bin' -ChildPath 'dotnet'`  

    | Windows             | Linux/MacOS          |
    |---------------------|----------------------|
    | `'/usr/bin/dotnet'` | `'\usr\bin\dotnet\'` |

## How to work with Git

1. git checkout main
1. git pull
1. git checkout -b \<label>-\<issue#>-\<branch name>
1. git add .  
    > add/stage all changes to the branch in previous step; typically add only the files related to a specific fix
1. git commit  
    > to mention subject/description of changes; each commit should aim to fix one issue at a time
1. git checkout main
1. git pull
1. git checkout \<label>-\<issue#>-\<branch name>
1. git merge main
1. git checkout main
1. git merge \<label>-\<issue#>-\<branch name>
1. git pull
1. `git push`
1. git branch -d \<label>-\<issue#>-\<branch name>
    > remove the branch # note do not need to push branch to github, unless collaborating with others on a bug/feature

### Prepare changes for a pull requests

> from your branch (if it hasn't been pushed to your origin yet)

1. git status
1. git push 
    > you will notice 'the current branch has no upstream'
1. a

    ```bash
    git push --setupstream origin \<branchname>  
    
    # or the equivalent...  
    git push -u origin <branchname>
    ```  

1. git status
1. git pull
1. git push
    > how do I know if my remote is origin?  
    > `git remote`  
    > `git remote show origin`

### Create a pull request

1. he did it through the gui
