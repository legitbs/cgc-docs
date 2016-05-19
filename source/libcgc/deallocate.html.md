---
title: deallocate
---
`deallocate` - remove allocations

# LIBRARY
library "libcgc"

# SYNOPSIS

~~~ c
#include <libcgc.h>

int deallocate(void *addr, size_t length)
~~~

# DESCRIPTION
The `deallocate` system call deletes the allocations for the specified
address range, and causes further references to the addresses within the
range to generate invalid memory accesses. The region is also automatically
deallocated when the process is terminated.

The address `addr` must be a multiple of the page size. The `length`
parameter specifies the size of the region to be deallocated in bytes.
All pages containing a part of the indicated range are deallocated, and
subsequent references will terminate the process. It is not an error if
the indicated range does not contain any allocated pages.

The `deallocate` function is invoked through system call number 6.

# RETURN VALUE
On success, `deallocate` returns 0; otherwise an error code is returned.

# ERRORS

EINVAL
: `addr` is not page aligned.

EINVAL
: `length` is zero.

EINVAL
: any part of the region being deallocated is outside the valid address range of the process.

# SEE ALSO
[allocate(2)](/libcgc/allocate/),
[fdwait(2)](/libcgc/fdwait/),
[random(2)](/libcgc/random/),
[receive(2)](/libcgc/receive/),
[_terminate(2)](/libcgc/terminate/),
[transmit(2)](/libcgc/transmit/)
