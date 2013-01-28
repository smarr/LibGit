LibGit - A Smalltalk Binding for libgit2
========================================

LibGit aims to be an object-oriented and complete binding for the libgit2
library for Pharo and Squeak Smalltalk. It is based on the NativeBoostFFI and
requires a CogVM with NativeBoost support.

Installation
------------

LibGit requires VM-support for NativeBoost. Suitable VMs are available from
the [Pharo project][1]: [NBCog][2]

Currently, LibGit is developed on [Pharo 2.0][3] and is not tested with
Squeak.

Furthermore, it requires a recent version of NativeBoost with support for C
enums. To install a suitable version of NativeBoost and the latest version of
LibGit execute the following expression:

```Smalltalk
Gofer new             "Load latest NativeBoost"
  squeaksource: 'NativeBoost';
  package: #ConfigurationOfNativeBoost;
  load.
(Smalltalk at: #ConfigurationOfNativeBoost) loadBleedingEdge.

Gofer new             "Load latest LibGit"
  smalltalkhubUser: 'StefanMarr' project: 'LibGit';
  package: 'LibGit-Core';
  load.

"Make sure to recompile the code after load, otherwise enums will not work"
(PackageInfo named: 'LibGit')
    classes do: [:c | c compileAll]. 
```

Usage
-----

While LibGit is currently in the prototyping phase, a few simple things are
already possible. Try the following simple queries on a git repository of your
choice:

```Smalltalk
repo := LGitRepository on: '~/tmp/libgit' asFileReference. "Open the repo"
repo branches.                                             "get a list of branches"

head := repo head.                                         "look up the HEAD"
  head isHead.                                             "some basic info"
  head name.

"look up the corresponding commit"
commit := head commit.
  commit author.
  commit committer.
  commit message.
  commit time.
```

Current Status
--------------

LibGit is currently just a simple prototype of a libgit2 binding. The goal is
to have a fully object-oriented binding that can be the backend for a
Monticello repository based on [FileTree][4]. However, most of the required
functionality is still missing and contributions are welcome.

The source code of LibGit is maintained on [SmalltalkHub][5] and mirrored to
[GitHub][6].

License
-------

LibGit is published under the MIT license. All contributions to this project
are automatically under the MIT license if not stated otherwise.


Acknowledgements
----------------

The provided bindings are based on bindings generated by Ciprian Teodorov's
[TalkFFI][7]. The manual adaptation were mainly applied to streamline the
interface and avoid non-essential dependencies.

[1]: http://www.pharo-project.org/pharo-download
[2]: http://pharo.gforge.inria.fr/ci/vm/nbcog/
[3]: http://www.pharo-project.org/pharo-download/beta-2-0
[4]: https://github.com/dalehenrich/filetree
[5]: http://smalltalkhub.com/#!/~StefanMarr/LibGit/
[6]: http://github.com/smarr/LibGit
[7]: http://smalltalkhub.com/#!/~CipT/TalkFFI