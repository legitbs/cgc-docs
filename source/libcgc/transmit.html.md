---
title: transmit
---

*transmit* - send bytes through a file descriptor

# LIBRARY
library "libcgc"

# SYNOPSIS
~~~ c
#include <libcgc.h>

int transmit(int fd, const void *buf, size_t count, size_t *tx_bytes)
~~~

# DESCRIPTION
The `transmit` system call writes up to `count` bytes from the buffer
 pointed to by `buf` to the file descriptor `fd`. If `count` is zero,
`transmit` returns 0 and optionally sets `*tx_bytes` to zero.

The `transmit` function is invoked through system call number 2.

# RETURN VALUE
On success, zero is returned and, if `tx_bytes` is not `NULL`, the number
of bytes transmitted in returned in `*tx_bytes` (zero indicates nothing
was transmitted). On error, an error code is returned and `*tx_bytes`
is left unmodified.

# ERRORS

EBADF  
: `fd` is not a valid file descriptor or is not open.

EFAULT 
: `buf` or *tx_bytes* points to an invalid address.

# SEE ALSO
[allocate(2)](/libcgc/allocate/),
[deallocate(2)](/libcgc/deallocate/),
[fdwait(2)](/libcgc/fdwait/),
[random(2)](/libcgc/random/),
[receive(2)](/libcgc/receive/),
[_terminate(2)](/libcgc/terminate/)
