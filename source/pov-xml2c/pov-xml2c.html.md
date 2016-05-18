% pov-xml2c(1) Cyber Grand Challenge Manuals
% Chris Eagle <cseagle@nps.edu>
% February 11, 2015

# NAME

pov-xml2c - XML to C conversion utility for DARPA CGC CFE proof of vulnerability specifications

# SYNOPSIS

pov-xml2c [options] -x *XML-POV*

# DESCRIPTION

pov-xml2c generates C source code suitable for compilation, when linked with libpov and libcgc, into a valid DECREE executable file. When executed, the resulting binary will carry out the pov actions specified in the input xml file.

# ARGUMENTS

-x *XML-POV*
:   Name of the xml file to convert. This file must conform the CFE POV dtd (/usr/share/cgc-docs/)

# OPTIONS

-h
:   Display a usage message and exit

-t *TIMEOUT*
:   Timeout value for the parsing operation.

-o *FILENAME*
:   Output file name. Defaults to stdout.

-v
:   Do not generate an output file, merely parse the input file for conformance againt the dtd

# EXAMPLE USES

- pov-xml2c -x pov1.xml

Generate DECREE compatible source code that implements the actions described in pov1.xml. Generated source sent to stdout.

- pov-xml2c -v -x pov1.xml

This will validate pov1.xml against cfe-pov.dtd. No C source will be generated

- pov-xml2c -x pov1.xml -o pov1.c

Generate DECREE compatible source code that implements the actions described in pov1.xml. Generated source saved to pov1.c

# COPYRIGHT

Under 17 U.S.C S 105 US Government Works are not subject to domestic copyright protection.

# SEE ALSO

`libpov` (1), `libcgc` (1)

For more information relating to DARPA's Cyber Grand Challenge, please visit <http://www.darpa.mil/cybergrandchallenge/>
