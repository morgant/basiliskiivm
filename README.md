`basiliskiivm`
==============
by Morgan T. Aldridge <morgant@makkintosshu.com>

OVERVIEW
--------

`basiliskiivm` is a utility I tossed together to package up [BasiliskII](https://github.com/cebix/macemu/) emulator (see [Emaculation's wiki](http://www.emaculation.com/doku.php/basilisk_ii) for further details) preferences & disk images into a single `.BasiliskIIVM` directory for each configuration to make it easier to manage, move, launch, and maintain multiple VMs. Think of it as the equivalent to VirtuaBox's [`VBoxManage`](https://www.virtualbox.org/manual/ch08.html), VMware Fusion's `vmrun`, or Parallels Desktop's [`prlctl`](http://kb.parallels.com/en/112013).

USAGE
-----

If you have already have a `.BasiliskIIVM` generated, you can launch it by running `basiliskiivm start <vm_name>.BasiliskIIVM` (replacing "<vm_name>" with the name of your BasiliskII VM name). You can check whether a VM is already/still running by running `basiliskiivm status <vm_name>.BasiliskIIVM`. While there is a `stop` command, it currently just reminds you to safely shut the OS down using Special > Shutdown.

While not yet implemented, you will be able to package your existing BasiliskII configuration (for example, one you've configured & tested with `BasiliskIIGUI`) into a `.BasiliskIIVM` directory by running `basiliskiivm package <vm_name>.BasiliskIIVM`. This will take your `~/.basilisk_ii_prefs` file, the ROM file, and disk images that are specified in it, and move them into the specified `.BasiliskIIVM` directory.

Run `basiliskiivm -h` for further usage instructions.

`.BasiliskIIVM` Structure
-------------------------

Each `.BasiliskIIVM` directory contains all the configuration settings & data (including disk images) needed to run BasiliskII. This makes it very easy to move, backup, or run multiple individual VMs. Each directory contains:

* The BasiliskII `.basilisk_ii_prefs` preferences/configuration file.
* A `.basiliskii.pid` file which exists & contains the PID of the active instance, when running.
* The ROM file.
* Any number of disk images.

LICENSE
-------

_TBD_

Copyright (c) 2016 Morgan T. Aldridge. All rights reserved.
