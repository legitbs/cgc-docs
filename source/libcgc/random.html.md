---
title: random
---
`random` - fill a buffer with random data

# LIBRARY
library "libcgc"

# SYNOPSIS

~~~ c
#include <libcgc.h>

int random(void *buf, size_t count, size_t *rnd_bytes)
~~~

# DESCRIPTION
The `random` system call populates the buffer referenced by `buf`
with up to count bytes of random data. If `count` is zero, `random`
returns 0 and optionally sets `*rnd_bytes` to zero.
If `count` is greater than `SSIZE_MAX`, the result is unspecified.

The `random` function is invoked through system call number 7.

# RETURN VALUE
On success, zero is returned and if `rnd_bytes` is not `NULL`, the
number of bytes copied into `buf` is returned in `*rnd_bytes`.
On error, an error code is returned, the contents of `*buf`
are undefined, and the value of `*rnd_bytes` is left unmodified.

# ERRORS

EINVAL
: `count` is invalid.

EFAULT
: `buf` or `rnd_bytes` points to an invalid address.

# SEE ALSO
[allocate(2)](/libcgc/allocate/),
[deallocate(2)](/libcgc/deallocate/),
[fdwait(2)](/libcgc/fdwait/),
[receive(2)](/libcgc/receive/),
[_terminate(2)](/libcgc/terminate/),
[transmit(2)](/libcgc/transmit/),
