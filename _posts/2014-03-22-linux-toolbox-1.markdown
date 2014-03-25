---
title: "Linux Toolbox: lsof -i"
layout: post
tags:
 - linux
 - command line
---
<div markdown="1" class="note">This post is part of a [series of posts](/topic/linx-toolbox) about Linux tools I use in my everyday work. I'm not a command line wizard--in fact I am doing these posts to help me retain some of what I learn exploring man pages. With any luck, others will find them useful too.
</div>

## lsof -i
Want to find out if a given port is already in use before firing up a server? Or perhaps a process has crashed, but left a server bound to a given port. This recently happened to me when jekyll crashed with the error `Address already in use - bind(2).`

You could use `ps aux | grep jekyll` or `grep ruby` in this case, but grepping the actual server, Webkit, doesn't return anything. But, knowing it's running on port 4000, you can type: 

~~~
$->lsof -i tcp:4000
~~~

...which produces output similar to this (I've omitted the last three columns due to spacial constraints):

~~~
COMMAND   PID  USER   FD   TYPE DEVICE
ruby    20306 jason    7u  IPv4  76997
~~~

  lsof[^1] searches open files. The briefest glance at lsof's man page shows that I've only touched the tip of the iceberg here in terms its capabilities. But that's how I learn: I discover a tool to solve a particular problem and then, once I'm comfortable with that limited use, I dig into the tool's other capabilities bit by bit as I have time.

[^1]: I was pronouncing it "ellsoff", so it took me a while to notice that it's "LS" (list) + "OF" (open file).


