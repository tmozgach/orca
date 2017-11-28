# ORCA

## Genomics Research Container Architecture

ORCA is a platform for bioinformatics analysis. It is suited for those wishing to conduct self-serve analysis using their own existing data. Hundreds of bioinformatics tools from [Homebrew-Science](https://github.com/Homebrew/homebrew-science) are installed in the ORCA Docker image using [Linuxbrew](http://linuxbrew.sh). See the [Dockerfile](Dockerfile) for the complete list of installed tools, and see the [ORCA](http://www.bcgsc.ca/services/orca) web site for more information.


### Removed packages
snap-aligner: it is not popular and conflicts with a `snap`

analysis: it is not popular and conflicts with a `biopieces`


sudo singularity build linuxbrewt3.simg docker://tmozgacheva/orca-a
singularity image.create --size 3000 overlay.simg
singularity shell --overlay overlay.simg linuxbrewt3.simg
