+++
date = "2016-03-27T08:00:00-00:00"
title = "Introducing Yosai"
author = "Darin"
image = "/content/images/yosai_header.png"
tags = ["tech"]
slug = "introducing_yosai"
+++

I am very pleased to announce the first release of [Yosai](http://yosaiproject.github.io/yosai).  

Yosai is an Apache2-licensed security framework written in Python that provides
*industrial strength* authentication, authorization, and session management from
a common API.  It is a port-fork of Apache Shiro: a successful Java project
widely used today.   Apache Shiro is a trusted framework, having evolved over ten
years of battle testing and authored by subject matter experts.


## Why Yosai?

Yosai addresses an unmet need by the Python community:  the need for a
feature-rich security framework that is decoupled from an application, reducing
redundant security-related development across projects.

Application security is a moving target in software development.  It is extremely
important that it be done right and it is increasingly difficult to do so.  

It's hard to roll your own and you probably shouldn't try to.
![caveman_wheel](/content/images/caveman_wheel.jpg)

I took this advice by porting a well-established project rather than create
my own from scratch.  Further, Yosai uses other reputable Python projects when
it made sense to do so, such as ``Passlib`` for cryptographic hashing, PyCA's ``cryptography`` library for encryption.

Through this effort, the open source Python community now has a security framework
that it can adapt to a wide range of applications, not just web applications.
When *extensions* are written for Yosai, the entire Yosai community will benefit
rather than, say, a subset that uses a specific web framework.  When an *integration*
is written, users of a particular application can interface with Yosai.


## v.0.1.0, project "Good Enough", is complete

![stones](/content/images/no_stone_unturned.png)

*Omnem Movere Lapidem*:  Leave No Stone Unturned

To leave no stone unturned is to leave nothing undone.  My goal with v0.1.0 was to create something *good enough* for a first production release.  Consequently, some java-like "design-stones" were left unturned.  These stones *had* to be left unturned: time and resource constraints did not allow for them to be tended to nor was I absolutely confident that every code path would survive the next iteration of refactoring:  although Apache Shiro is based on more than ten years of battle testing, competing priorities lead the ambitious to accept how things are along the way.

So, when you see portions of code that kind of smell like Java design, know that
I had to make a tough decision not to spend too much time and effort on every piece. If a design impacts performance or maintenance, though, and it is on a critical path of execution, there's a really good chance that it will eventually be refactored.


## Acknowledgements

Special thanks to Alex Gronholm, Michael Merickel, Stack Overflow, and the Python
IRC channels on Freenode.

.. and Les Hazlewood:  Thank you for Shiro!
