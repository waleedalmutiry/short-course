## Instructions for installing *gfortran* on MacOSX

### OSX 10.10 (Yosemite) users

Make sure you have `Xcode` installed.  This can be downloaded from the App Store or from https://developer.apple.com/xcode/downloads/.

Open a terminal window and execute
```
xcode-select --install
```

This should have the result of installing command-line versions of all the tools you'll need to compile C and FORTRAN code.
To test it, run the installation and test scripts from
http://kinglab.eeb.lsa.umich.edu/SBIED/scripts/preparation.html.

### OSX 10.9 and older

Make sure you have `Xcode` installed.  It is available at https://developer.apple.com/xcode/downloads/.  You may need to follow the "Additional Tools" link to find an older version of `Xcode`.

The following is based on the [instructions given on the *R* website](http://cran.r-project.org/bin/macosx/tools).
If you have root privileges and wish to install `gfortran` globally in `/usr/local/`, then 
Download and run the `mac-fortran-sudo.sh` script from the course website.  To do this, open a terminal and execute
```
curl -O http://kinglab.eeb.lsa.umich.edu/SBIED/scripts/mac-fortran-sudo.sh
sudo sh mac-fortran-sudo.sh
```
If you just wish to install `gfortran` in your user space in such a way that it can be easily removed later, then download and run the `mac-fortran.sh` script from the course website by opening a terminal and executing
```
curl -O http://kinglab.eeb.lsa.umich.edu/SBIED/scripts/mac-fortran.sh
sh mac-fortran.sh
```

This will download and unpack a new version of `gfortran`, putting it into a new directory: `~/gfortran`.  It will also put a `Makevars` file into your `~/.R` directory so that `R` knows where to look when it wants `gfortran`.

If it works, you should be able to run the installation and test scripts from http://kinglab.eeb.lsa.umich.edu/SBIED/scripts/preparation.html.