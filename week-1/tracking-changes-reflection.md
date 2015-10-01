###How does tracking and adding changes make developers' lives easier?
Code is complicated and there is a lot to remember. Code can also be full of bugs. Tracking keeps a comprehensive list of what works and what doesn't which is a life saver. Plus, it's useful when multiple people are looking at a project. The tracking creates a trail of information for us to study.

###What is a commit?
A commit is like a save point in a game. If we break our code we can thankfully go back to an older version that worked. 

###What are the best practices for commit messages?
Capitalize what needs to be, 50 characters or less, use imperative: "Fix" rather than "Fixed"

###What does the HEAD^ argument mean?
HEAD^ means the latest commit. So, the most recent verison of your project you could be working on. 

###What are the 3 stages of a git change and how do you move a file from one stage to the other?
git status to see what needs to be added and commited.
git add to add what needs to be commited to the staging area.
git commit -m "" to commit plus write a message for the commit.

Using *git add* will move the file you are working on to the staging area. Also, *git add .*and *git add -A*.

###Write a handy cheatsheet of the commands you need to commit your changes?
git status
git add .
git commit -m "Blah Blah Blah"

###What is a pull request and how do you create and merge one?
###Why are pull requests preferred when working with teams?