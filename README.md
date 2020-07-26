
# SAUX Aarch64 - linux system
(SAUX Aarch64 is working name for the aarch64 architecture)

It is built on the basis of the [CRUX Linux project](https://crux.nu/home/).
Includes software [Runit](http://smarden.org/runit/) and run scripts from a [Void Linux project](https://voidlinux.org/).  
The purpose of this project is not to compete with the above system.
### This is an alternative to Crux+Runit=Saux.

## Repository saux-core ports

A set of ports that make up the root file system.  
Most ports are taken from repository the [Crux Linux core](https://crux.nu/gitweb/?p=ports/core.git;a=summary)
and modified in the content and format of the Pkgfile file.

Because aarch64 motherboards have different kernel build requirements,  
`saux-core does not include a port for the Linux kernel.`
