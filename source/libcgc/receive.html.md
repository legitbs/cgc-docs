---
title: receive
---
*receive* - receive bytes from a file descriptor

# LIBRARY
library "libcgc"

# SYNOPSIS
~~~ c
#include <libcgc.h>

int receive(int fd, void *buf, size_t count, size_t *rx_bytes)
~~~

# DESCRIPTION
The `receive` system call reads up to `count` bytes from file descriptor
`fd` to the buffer pointed to by `buf`. If `count` is zero, `receive`
returns 0 and optionally sets `*rx_bytes` to zero.

The `receive` function is invoked through system call number 3.

# RETURN VALUE
On success, zero is returned and, if `rx_bytes` is not `NULL`, the number
of bytes received is returned in `*rx_bytes` (zero indicates nothing
was received or end-of-file). On error, an error code is returned and
`*rx_bytes` is left unmodified.

# ERRORS

EBADF
: `fd` is not a valid file descriptor or is not open.

EFAULT
: `buf` or *rx_bytes* points to an invalid address.

# SEE ALSO
[allocate(2)](/libcgc/allocate/),
[deallocate(2)](/libcgc/deallocate/),
[fdwait(2)](/libcgc/fdwait/),
[random(2)](/libcgc/random/),
[_terminate(2)](/libcgc/terminate/),
[transmit(2)](/libcgc/transmit/),
