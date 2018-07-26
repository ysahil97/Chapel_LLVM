# Instructions to use the Cray Servers(especially the GPU)

* Login to the cray server with your username and your allotted password.
* The default compiler environment will be Cray Compiler Environment (CCE). In order to change it to GNU, use `module swap`.
* There are a variety of cray Programming environments available each with default number of compute nodes of different quality. The default CPE is `craype-broadwell`. For our GPU purpose, we need `craype-ivybridge`. Swap the programming environments with the following commands:

```
module swap craype-broadwell craype-ivybridge
```

* We need to load some extra modules which enable GPU usage

```
module load craype-accel-nvidia35
module load cudatoolkit
```

* Build the chapel environment and create the executable.
* In order to run this executable, we need to assign a gpu-node to it.This will be taken care of by
```
qsub -d. -I -V -q gpu_nodes -N 1
```
It will create an interactive subshell (usually at the location of user's home directory).
* Run the executable to see the results
* [__Important__] _After your work has been finished, always `exit` the subshell_ so that others may use it.
