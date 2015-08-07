Introduction
============
"**alefa**" means "run", "go", "launch" or "execute" in malagasy language.

"**alefa**" is a command line utility that allows to control the launch and execution of other programs.

It is often useful to write (more or less) simple scripts to rerun some commands until they "succeed", or to launch other commands indefinitely. There are numerous common use cases.

Such things should be easily automated so that we can do other tasks without being distracted and without having to restart such frustrating commands ourselves by hand: without creating scripts!

"**alefa**" fixes that. I decided to create it a day that I was tired of creating, modifying and adapting such scripts to make yet simple and routine tasks.

Synopsys
========
`alefa [OPTION]... FILE`

Execute FILE. FILE has to be the last argument, after all the OPTIONs.

`alefa [OPTION]... "FILE [--OPTIONS]"`

Execute FILE with its OPTIONS. FILE has to be the last argument, after all the OPTIONs. Note the double quotes enclosing the executable file and its parameters.

Mandatory arguments to long options are mandatory for short options too.

Options
=======
**-h,  --help**

Show the help screen.

**-i,  --infinite**

Re-run until the end of time (or until interrupted by ctrl + c)

**-t,  --tries=NUMBER**

Set number of retries to NUMBER (0 unlimits).

**-u,  --unlimits**

Tries until exit code = 0 (equiv: --tries=0).

**-w,  --wait=SECONDS**

Wait SECONDS seconds between retries. Default: 1 second.

**-x,  --exitcode**

Show exitcode. Can be useful for testing purposes.

Interrupt
=========
As usual, you can interrupt **alefa** with **ctrl** + **c**

Examples
========
Examples abound:
* Tries to connect over ssh to a server currently rebooting somewhere in the world, every 5 seconds until it succeeds. In case of connection loss, try again automatically every 5 seconds. When you leave yourself the ssh session by typing "exit", "**alefa**" also will stop its attempts and you will return to the prompt:

`alefa -u -w 5 "ssh my.server.org"`

* Tries 10 times only to ping a website, each 30 seconds. Prints the exitcode after each attempt::

`alefa -t 10 -w 30 -x "ping -c 5 www.debian.org"`

* Regularly check the available disk space on /tmp during a long copy of huge files in this directory. Interrupt with ctrl + c:

`alefa -i -w 10 "df -h /tmp"`

I use "**alefa**" every day since its creation in 2008. I decided to publish it, being certain that it will be useful. It already is, but many features will be added progressively, and I'll push them as soon as they are publishable.
So.. feel free to make suggestions based on your daily needs, and please report bugs.

Bugs
====
Feel  free  to make suggestions based on your daily needs.
Report bugs to <thierry.andriamirado@netsika.net>

Nota Bene
=========
* Although **alefa** is already widely usable, many other convenient features are under development and will come out as you go. Please check back regularly to benefit.
* Similarly, binaries will be available online.
* This version now runs on Linux (32bit and 64bit). Later ones will work on windows shortly.

Author
======
**Thierry Andriamirado** <thierry.andriamirado@netsika.net>

Copyright and License
=====================
Copyright 2008-2015 Thierry Andriamirado.

GNU General Public License; either version 2 of  the  License, or (at your option) any later version.

