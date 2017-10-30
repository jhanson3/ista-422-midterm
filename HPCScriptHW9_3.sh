#!/bin/bash
### script to run a serial job using one core on htc using queue windfall or standard
### beginning of line, three pound/cross-hatch characters indicate comment
### beginning of line #PBS indicates an active PBS command/directive

### Set the job name
#PBS -N KENSolo

### Specify the PI group for this job
### List of PI groups available to each user can be found with "va" command
#PBS -W group_list=nirav

### Set the queue for this job as windfall or standard (adjust ### and #)
###PBS -q standard
#PBS -q windfall

### Request email when job begins and ends - commented out in this case
#PBS -m bea

### Specify email address to use for notification - commented out in this case
#PBS -M kensakuokada@email.arizona.edu

### Set the jobtype for this job
### This attribute is not used on Ocelote
###PBS -l jobtype=serial

### Set the number of nodes, cores and memory that will be used for this job.
### select=1 is the node count, ncpus=2 are the cores in each node,
### mem=12gb is memory per node, pcmem=6gb is the memory per core - optional

#PBS -l select=1:ncpus=2:mem=12gb:pcmem=6gb

### Important!!! Include this line for your small jobs.
### Without it, the entire node, containing 28 cores, will be allocated
#PBS -l place=pack:shared

### Specify "wallclock time" required for this job, hhh:mm:ss
#PBS -l walltime=01:00:00

### Specify total cpu time required for this job, hhh:mm:ss
### total cputime = walltime * ncpus
#PBS -l cput=01:00:00

### Load required modules/libraries
### Use "module avail" command to list all available modules
module load blast

### set directory for job execution, ~netid = home directory path,
cd ~kensakuokada/INFO522/HW9

### run your executable program with begin and end date and time output
date
echo "Hello World!"
###/usr/bin/time my-executable-program-name
date
