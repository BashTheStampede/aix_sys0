#Puppet module to manage AIX sys0 settings aix_sys0 #

This module enbables the ability to manage the sys0 settings in AIX through puppet.

### Requirements

Module has been tested on:

 * PE Puppet 3.3
 * OS:
   * AIX 5.3
   * AIX 6.1
   * AIX 7.1

```puppet
class { 'sys0':
  maxuproc => '256',  # set max user processes
  maxargs  => '256',  # set max user arguments
}
```

***
