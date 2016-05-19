---
title: type2_submit
---

*type2_submit* - submit Type 2 POV data to the CFE framework

# LIBRARY
library "libpov"

# SYNOPSIS

~~~ c
#include <libpov.h>

int type2_submit(const unsigned char *val, size_t len)
~~~

# DESCRIPTION
The `type2_submit` function is used to submit returned Type 2 private
data to the CFE competition framework in order to demonstrate a 
successful Type 2 POV. The `len` bytes from the buffer pointed to
by `val` are transmitted as the result of the POV. 

# RETURN VALUE
On success, zero is returned. On error, -1 is returned.

# SEE ALSO
[type1_negotiate(3)](/libpov/type1_negotiate/),
[type2_negotiate(3)](/libpov/type2_negotiate/)