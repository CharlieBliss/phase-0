#Think About Time
  Before going into this, I was familiar with the concepts of flow and time-boxing, but I’d never heard of the Fogg method or some of the suggestions from counter-intuitive productivity. Specifically, the two-minute micro focus activity seems like a practical way to get moving on something.
  Time boxing is setting goals and working toward those goals in temporally defined increments. The Pomodoro Technique suggests working in 25 minute increments with a 5 minute break. You can use this theory really anywhere, but specifically in phase 0, it can be used to complete longer tasks without burning out or losing motivation by breaking down tasks into more easily digestible portions and giving time to let the information from the portions calcify.
  I don’t have much of a strategy for managing time. Generally, I’ve always been able to manage my time by very vague timeboxing, figuring out how much work I need to do, setting a deadline, and setting out worktimes that will allow me to finish whatever task I have by the deadline. I’ve never run into issues with this before, but I do often find myself getting distracted.
  I think I’ll be able to employ some of these tactics, such as the Fogg method of getting specific with my goals and some of The Muse’s tricks from establishing flow, as well as some more rigid timeboxing.
  I like the way I do things now, for the most part, but every system can be refined and tailored to the needs of its users. Luckily, Phase 0 has a pretty detailed and structured system for organizing tasks, so having specific goals shouldn’t be a problem. All I will have to do is figure out what tasks I excel or struggle with, and portion out my time appropriately. In week one, for example, I can see pretty clearly how I can schedule everything out, leaving a day to complete longer tasks like Command Prompts, and fitting in one or two tasks that are short or medium in length each following day. Ideally, I’ll finish everything by friday, giving myself the weekend to reflect and review before starting next week’s work.
#The Command Line
Off to a fun start already!

A shell is the interface that lets you directly interact with your computers operating system. I’ve been using OSX, and the terminal is the shell with which I access the Unix system. Bash is the shell I’ve been using on OSX, the language with which I interface with the OS.
  The most challenging thing for me in this section was figuring out the exact function of the pushd/popd command. I thought I had a pretty good understanding of it, but when I went to practice, I couldn’t make the commands do what I wanted at all. After doing a little research using man and google, I feel very much more confident. Eventually I was able to get everything working more or less in the way I intended.
  The commands I used the most ended up being pwd, cd, and ls, but I wonder if becoming for familiar with the system and relying less on a GUI would render these less valuable. For now, I will say that these are the most important, since their combination lets me navigate the system with the same ease through which I could get through folders. At the very least, the cd command is important enough that it would probably be important no matter what your task is.

As far as commands go

-pwd
prints the directory you’re currently viewing/editing/working in

-ls
prints the contents of the directory you're working with

-mv
moves a file OR renames it, depending on whether the destination is a file or a directory. This one tripped me up for a little while.

-cd
changes working directory, lets you move up and down through directories

-../
In conjunction with cd, lets you move up through directories, more dots and dashed means more directories. This may have more utility, but that’s as far as I went with it.

-touch
creates a file.

-mkdir
creates a directory.

-less
shows the contents of a file in a manageable way, page by page

-rmdir
deletes a directory(provided it is empty)


-rm
removes files

-help

Seems to do something different depending on operating system. On OSX/unix, displays information about commands, but less extensively than man. The handbook implies that this replaces man on windows systems.
#Forking and Cloning
I would suggest they think of github like any other folder system on their computer. It works just like the systems that anybody who works with computers is familiar with. Creating a repository is just like creating a folder on a computer. Just go on Github, click the plus sign, and create a repository. This repository is a folder that holds all the data for the project you want to work on. Simply name it, make it public or private, and give it a license that determines how the contents of that folder can be used. Hit the big green button and that’s it! Repository created.
  Forking a repository is just taking an already created repository and copying it to your Github profile. It’s easy if you think about it like sticking a fork into their profile, and putting a copy of their dish onto your plate, and into your profile. All you have to do is go to any public repository(or private if you have access) and click the grey fork button. Fork the repository to whatever plate you need it on, and a copy will show up, letting you work on that repository independently, without making changes to the original copy of the folder.
  Cloning a repo makes the image of github as a folder system much more clear for people unfamiliar with Github. Cloning takes a repository and establishes it as a folder locally on a computer. This process is very similar to forking, but rather than copying a repository to your github profile, it copies the repository to a computer. Simply find the URL to your repository on the Github page, copy it, and, when you’re working in the directory you’d like in your terminal, write

git clone COPIED_URL_GOES_HERE

Voila. You may be prompted to input your Github username and password, but after that, the process is complete, and your Github repository has become a folder on your computer, containing the contents of the online repository.


I found this process to be very straightforward, and I didn’t have any setbacks at all. The instructions were very clear and detailed, so I was able to breeze through this section. Hopefully my directions were just as clear(though lacking the picture references.)
