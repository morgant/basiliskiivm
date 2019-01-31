`basiliskiivm`
==============
by Morgan T. Aldridge <morgant@makkintosshu.com>

[![basiliskiivm on OpenHub](https://www.openhub.net/p/basiliskiivm/widgets/project_thin_badge.gif)](https://www.openhub.net/p/basiliskiivm)

OVERVIEW
--------

`basiliskiivm` is a utility I tossed together to package up [BasiliskII](https://github.com/cebix/macemu/) emulator (see [Emaculation's wiki](http://www.emaculation.com/doku.php/basilisk_ii) for further details) preferences & disk images into a single `.BasiliskIIVM` directory for each configuration to make it easier to manage, move, launch, and maintain multiple VMs. Think of it as the equivalent to VirtuaBox's [`VBoxManage`](https://www.virtualbox.org/manual/ch08.html), VMware Fusion's `vmrun`, or Parallels Desktop's [`prlctl`](http://kb.parallels.com/en/112013).

USAGE
-----

If you have already have a `.BasiliskIIVM` generated, you can launch it by running `basiliskiivm start <vm_name>.BasiliskIIVM` (replacing "<vm_name>" with the name of your BasiliskII VM name).

You can check whether a VM is already/still running by running `basiliskiivm status <vm_name>.BasiliskIIVM`. While there is a `stop` command, it currently just reminds you to safely shut the OS down using Special > Shutdown.

You can create snapshots of a VM by running `basiliskiivm snapshot <vm_name>.BasiliskIIVM`. This currently just creates date-stamped copies of all the disks in the VM, so it's not particularly efficient. You can view all snapshots by running `basiliskiivm snapshots <vm_name>.BasiliskIIVM`.

While not yet implemented, you will be able to package your existing BasiliskII configuration (for example, one you've configured & tested with `BasiliskIIGUI`) into a `.BasiliskIIVM` directory by running `basiliskiivm package <vm_name>.BasiliskIIVM`. This will take your `~/.basilisk_ii_prefs` file, the ROM file, and disk images that are specified in it, and move them into the specified `.BasiliskIIVM` directory.

Run `basiliskiivm -h` for further usage instructions.

`.BasiliskIIVM` Structure
-------------------------

Each `.BasiliskIIVM` directory contains all the configuration settings & data (including disk images) needed to run BasiliskII. This makes it very easy to move, backup, or run multiple individual VMs. Each directory contains:

* The BasiliskII `.basilisk_ii_prefs` preferences/configuration file.
* A `.basiliskii.pid` file which exists & contains the PID of the active instance, when running.
* The ROM file.
* Any number of disk images.
* If there are any snapshots, a `Snapshots` directory containing one folder per snapshot (named in the 'YYYYmmdd-HHMMSS' format). Inside each individual snapshot folder will be a copy of all the disk images at the time of the snapshot.

LICENSE
-------

Copyright (c) 2016-2019, Morgan T. Aldridge. All rights reserved.

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are met:

- Redistributions of source code must retain the above copyright notice, this 
  list of conditions and the following disclaimer.
- Redistributions in binary form must reproduce the above copyright notice, 
  this list of conditions and the following disclaimer in the documentation 
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE 
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
