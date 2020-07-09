# Clustal Omega SBATCH Demo

This directory contains instructions and resources for running a multiple sequence alignment using [Clustal Omega](http://www.clustal.org/omega/) on Frontera. It can easily be adapted for running on other systems that use Slurm as a workload manager.

## Quick-Start

1. Start an SSH session on a Frontera login node, `cd` to your `$WORK` or `$SCRATCH` directory, and clone this repository. `cd` into `code/clustalo_sbatch`.
2. Install Clustalo in your $HOME directory.
    1. `wget` the standalone 64-bit Linux binary:
    ```bash
    wget -O ./clustalo http://www.clustal.org/omega/clustalo-1.2.4-Ubuntu-x86_64
    chmod u+x /usr/bin/clustalo
    export PATH="$PATH:$(realpath ./clustalo)"
    # append above PATH export to .bashrc or .bash_profile as desired
    ```
    2. [Full installation instructions](http://www.clustal.org/omega/#Download)
3. From a login node: `sbatch ./clustalo_align.slurm`
