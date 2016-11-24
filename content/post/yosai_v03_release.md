+++
author = "Darin"
date = "2016-11-21T06:47:41-05:00"
draft = false
image = "/content/images/yosai_header_v03.png"
slug = "yosai_v03"
tags = ["tech"]
title = "Announcing Yosai v0.3"
+++

Yosai v0.3 was released to [PyPI](https://pypi.python.org/pypi/yosai/0.3.0).

[Project Web Site](http://yosaiproject.github.io/yosai)

## About Yosai

Yosai is an Apache2-licensed security framework written in Python that provides
*industrial strength* authentication, authorization, and session management from
a common API.  You can secure *any* kind of Python application with it.


## Release Highlights

- A complete second-factor authentication workflow using time-based one-time passwords
- Rate limiting / account locking
- Significant refactoring and optimizations


### <center> Second Factor Authentication </center>

![totp_logo](/content/images/totp.jpg)

As of this release, Yosai features native support for Time-based One Time Passwords (TOTP), the
prevailing standard for one-time password authentication.

Authenticating a user configured for TOTP authentication involves two steps:

1. Username / Password Authentication
2. One-time Password Authentication

An overview of second-factor authentication was added to Yosai's [authentication
documentation](https://yosaiproject.github.io/yosai/authentication).

I've created a [complete tutorial](http://yosaiproject.github.io/yosai/tutorials/totp_tutorial)
to help you learn how to use TOTP in your project.  The tutorial guides you
through setup and workflow.


### <center> Rate Limiting / Account Locking </center>

Yosai now allows developers to regulate account authentication for any particular
user account by defining a number of maximum allowable authentication attempts.
If a developer defines within yosai's authentication settings an **account_lock_threshold**,
defining a limit to the total allowable failed attempts during authentication,
account locking is enabled.

Assuming account locking is enabled, the moment that the number of failed
authentication attempts exceeds the maximum-allowable threshold, Yosai will lock
the account, prohibiting subsequent authentication regardless of whether
credentials match.


### <center> Refactoring and Optimizations </center>

Refactoring is an iterative process that ought to be undertaken when the benefits
of doing so are sufficient to justify the expenditure of effort required to perform
it. In this case, the ends justified the means:  Yosai v0.3 is leaner, meaner, and
consequently a whole lot more pythonic than prior versions.


### Project Details

Yosai works with newer versions of python3, specifically py3.4 and newer.

See [the Yosai Project on Github](https://github.com/yosaiproject)


### Passlib 1.7

Yosai v0.3 uses Passlib for cryptographic hashing and totp token generation.  This
was made possible by the latest Passlib 1.7 release.  I'd like to thank its author,
Eli, for his dedication to the project.  To learn more about this project and the
updates in 1.7, vist [the passlib web site](https://pythonhosted.org/passlib/).

Release highlights:
- Argon2 & Scrypt hash support
- TOTP support
- PBKDF2 now has faster builtin backend, and utilizes other backends where available
- Lots of API cleanups and internal refactoring
- HtpasswdFile reader is now more flexible, and with improved security options.
- Refreshed documentation
