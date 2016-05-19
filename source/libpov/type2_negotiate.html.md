---
title: type2_negotiate
---

*type2_negotiate* - negotiate a Type 2 POV

# LIBRARY
library "libpov"

# SYNOPSIS
~~~ c
#include <libpov.h>

int type2_negotiate(type2_vals *t2vals)
~~~

# DESCRIPTION
The `type2_negotiate` function performs a CGC Type 2 POV negotiation and
retrieves values assigned by the CFE competition framework. The returned
values specify the base address (`t2vals->region_addr`) of a memory region
whose size is `t2vals->region_size`. Additionally, `t2vals->read_size` specifies
the number of bytes, taken from anywhere within the specified region, that
the POV must resubmit to the competition framework to demonstrate the 
success of the POV.

# RETURN VALUE
On success, zero is returned and the `t2vals` structure is populated with the
region address, region size, and number of bytes to be read.

On error, -1 is returned and `t1vals` is undefined.

# SEE ALSO
[type1_negotiate(3)](/libpov/type1_negotiate/),
[type2_submit(3)](/libpov/type2_submit/)
