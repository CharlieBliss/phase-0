#How does tracking and adding changes make developers' lives easier?

Tracking and adding changes is tied to the utility of version control in that it allows developers to see when and how changes were made to the code and revert to a time before those changes if necessary. By knowing when and where all changes were made, if anything goes wrong or if the code isn't exactly what the developers want, they can easily go back to a time before those changes were made. It also allows multiple developers to work on the same project without stepping on each other's toes.

#What is a commit?

A commit is saving the state of the code, the same way any document is saved. This gives a state for a developer to return to if he or she wants.

#What are the best practices for commit messages?

Good practices include writing in the imperative, having a short, capitalized summary, and, if necessary, a more detailed, but still concise, body paragraph describing the details of the changes. Hyphenated bullet points are helpful in reviewing a list of changes.

#What does the HEAD^ argument mean?

Head^ refers to the last commit made, that is, the most recent save point made to your file.

#What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of a git change are modified, staged, and committed. A modified file has had changes made to it, but none have been tracked or committed. Using the add command, a file becomes staged, which means it is ready to commit, but not yet committed. Finally using git commit -m or -v, the file is committed, and any changes made are saved.

#Write a handy cheatsheet of the commands you need to commit your changes

## pwd and cd

to navigate to the desired directory

## git pull
to merge the current directory with a remote repository

## git checkout -b branch_name
creates or navigates to a branch

## git add
stages a file for commit

##git commit -m ""
commits the file and allows a message

##git push origin branch_name

pushes your local files to a remote repository in a branch, allowing you to merge the branch with the master at a later time

##git fetch origin master + git merge origin master
merges your local master with the remote repository once the files are merged on Github

#What is a pull request and how do you create and merge one?
A pull request on Github requests that a branch or file be merged into the master file. On any repository,a pull request can be created by clicking the green "Create Pull Request" or navigating to the pull requests tab, clicking create new pull request, and setting the head to the branch you want merged into the master file. Once the pull request is created, merge the files with the big green merge pull request button or resolve any conflicts preventing you from doing so.Once the branch is merged, it can be deleted to keep the repository clean and concise.

#Why are pull requests preferred when working with teams?
When working with teams, pull requests allow other people to review the code in your branch before you commit it to the master. It is easier and more efficient to review branches before they are committed than to undo changes after they've been made. This is especially helpful when working with many contributors to the same file



