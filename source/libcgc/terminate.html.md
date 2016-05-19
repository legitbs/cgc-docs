---
title: _terminate
---

*_terminate* - terminate the execution of a program

# LIBRARY
library "libcgc"

# SYNOPSIS
~~~ c
#include <libcgc.h>

void _terminate(int status)
~~~

# DESCRIPTION
The `_terminate` system call terminates a process.  All file descriptors
open in the process are flushed and closed. The scoring system is notified
of the value of `status`.

The `_terminate` function is invoked through system call number 1.

# RETURN VALUE
The `_terminate` system call never returns.

# SEE ALSO
[allocate(2)](/libcgc/allocate/),
[deallocate(2)](/libcgc/deallocate/),
[fdwait(2)](/libcgc/fdwait/),
[random(2)](/libcgc/random/),
[receive(2)](/libcgc/receive/),
[transmit(2)](/libcgc/transmit/),
