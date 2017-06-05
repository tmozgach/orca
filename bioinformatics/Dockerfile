FROM linuxbrew/linuxbrew
MAINTAINER Shaun Jackman <sjackman@gmail.com>

ENV PERL5LIB /home/linuxbrew/perl5/lib/perl5

RUN brew install perl cpanm gcc zlib expat berkeley-db mysql

RUN brew install ruby

RUN gem install gnuplot RubyInline terminal-table narray

RUN cpanm -i DBD::mysql DB_File forks Perl::Unsafe::Signals Bio::Root::Version IO::All forks::shared Want Bit::Vector DBD::SQLite DBI File::Which IO::Prompt Inline::C PerlIO::gzip XML::Simple
RUN cpanm -i Module::Build Class::Inspector SOAP::Lite SVG Term::ReadKey Time::HiRes XML::Parser Carp::Clan HTML::Parser LWP URI Inline Inline::C Parse::RecDescent version

#RUN cpanm Bio::Perl
#RUN brew install bioperl

RUN brew install python # for pip and setuptools
RUN brew install python3
RUN brew install numpy # for cerulean
RUN pip install biopython

RUN brew install libxml2
RUN pip install python-igraph
RUN pip install pysam

RUN brew install tcsh

# RUN brew install homebrew/python/HTSeq
RUN brew install homebrew/science/matplotlib
# RUN brew install homebrew/python/pandas
# RUN brew install homebrew/python/pip
# RUN brew install homebrew/python/pysam
# RUN brew install homebrew/python/PyVCF
RUN brew install scipy
# RUN brew install homebrew/python/virtualenv


#Uncomment 3 lines 
RUN brew install R

RUN brew install unzip
RUN brew install vim

RUN brew tap homebrew/science

# test quast
# RUN brew install quast

RUN cpanm -i HTML::Entities LWP::Simple LWP::Protocol::https  Statistics::Descriptive

RUN brew install \ 
a5 \
abacas \
abyss-explorer \
abyss \
ace-corrector \
adam 
RUN brew install adapterremoval

RUN brew install afra \
allpaths-lg \
amos \
andi \
# RUN brew install anvio
arcs \
art \
artemis \
astral \
autoconf \
automake \
atram 
RUN brew install augustus
 
#Replace sudo apt with berkeley-db mysql
#RUN brew install populations
#put above later for biopieces, sudo apt... for DB_File
#RUN brew install perl
#RUN sudo apt-get install libdb6.0-dev libdb6.0
#RUN cpanm -i DB_File
#For DBD::mysql
#RUN sudo apt-get install libmysqlclient-dev --yes
#RUN cpanm -i DBD::mysql
#RUN cpanm -i Module::Build Class::Inspector SOAP::Lite SVG Term::ReadKey Time::HiRes XML::Parser Carp::Clan HTML::Parser LWP URI Inline Inline::C Parse::RecDescent version 
#RUN brew install ruby
#RUN gem install gnuplot
#RUN gem install RubyInline
#RUN gem install terminal-table
#RUN gem install narray
# # RUN brew install node
# # RUN node install bionode -g
#RUN brew reinstall biopieces


#RUN brew install corset

RUN brew install bam-readcount \
bamhash \
bamm \
bamtools \
bamutil \
barrnap \
bbtools \
bcalm \
bcftools \
beagle \
beast \
beast2 \
bedops \
bedtools \
beetl \
bfc \
bioawk \
biobloomtools \
biointerchange \
biomake \
# bipe \
bison \
biopieces \
blasr \
blast \
blat \
bless \
bowtie \
bowtie2 \
bpipe \
breseq \
busco \
bwa 

#for test
#RUN pip install biopython
#RUN brew install gene 

#for test
#RUN brew install tcsh
#RUN brew install binutils
#RUN sudo apt-get install csh

RUN brew install canu \
cap3 \
cd-hit \
cegma \
celera-assembler \
centrifuge \
cerulean \
circlator \
clark \
clonalframeml \
clonehd \
clustal-omega \
clustal-w \
cmake \
curl \
# RUN brew install corset
cytoscape
RUN brew install daligner \
dazz_db \
# RUN brew install delly
dextractor \
diamond \
dida \
discovar \
# RUN brew install discovardenovo
dsk \
dwgsim
RUN brew install e-mem \
edirect \
emacs \
# RUN brew install ensembl-tools
exonerate \
express
RUN brew install fasta \
fastml \
fastq-tools \
fastqc \
fasttree \
fastuniq \
fastx_toolkit \
fermi-lite \
fermi \
fermi2 \
fermikit \
flash \
flex \
fqzcomp \
freebayes \
freec \
fsa \
fwdpp
RUN brew install gaemr
# RUN brew install garli
RUN brew install gatb
RUN brew install gatk
RUN brew install geneid
RUN brew install genewise
# RUN brew install genometools

#no such formulae
# RUN brew install gfatools

RUN brew install gingr
RUN brew install glimmerhmm
RUN brew install gmap-gsnap
RUN brew install gnuplot
RUN brew install grabix
RUN brew install graphlan
RUn brew install gsl
# RUN brew install gubbins
RUN brew install harfbuzz
# RUN brew install harvest-tools
RUN brew install hisat
RUN brew install hisat2
RUN brew install hlaminer
RUN brew install hmmer
RUN brew install hmmer2
# RUN brew install htqc
RUN brew install htsbox
RUN brew install htslib
RUN brew install humann2
RUN brew install icu4c
RUN brew install idba
RUN brew install igv
RUN brew install igvtools
RUN brew install impute2
RUN brew install infernal
RUN brew install iqtree
RUN brew install iva
RUN brew install jellyfish-1.1
RUN brew install jellyfish
RUN brew install jpeg

#kat and kmerstream works after C-letter formulae 
RUN brew install kaiju \
kallisto \
kat \
kent-tools \
kmacs \
kmc \
kmergenie \
kmerstream \
kollector \
kraken


RUN brew install last \
libbigwig \
libpll \
libsequence \
libtool \
lighter \
links-scaffolder \
lobstr \
lsd \
lua \
lumpy-sv 

RUN brew install m4 \
macse \
mafft \
makedepend 
RUN brew install maker 
RUN brew install mapsembler2 \
maq \
mash \
# RUN brew install masurca
mcl \
megahit \
meme \
# meraculous \
# RUN brew install metaphlan
mhap \
minced \
minia \
miniasm \
minimap \
mir-prefer \
# RUN brew install mira
mitofy \
# RUN brew install mlst
# RUN brew install mothur
mrbayes \
multi-worm-tracker \
mummer \
muscle 
# musket 
RUN brew install nanopolish \
# RUN brew install ncbi-c++-toolkit
ncl \
newick-utils \
newicktools \
nextflow \
nonpareil \
novoalign \
ntcard \
nxtrim 
RUN brew install oases
# RUN brew install ogdraw
RUN brew install oma

#works after C-letter formulae
RUN brew install orthofinder
# RUN brew install pagan
RUN brew install paml
RUN brew install pandaseq
RUN brew install parallel
RUN brew install parsnp
RUN brew install pathd8
RUN brew install pathvisio
# RUN brew install pbh5tools
# RUN brew install pbsuite
RUN brew install pcre
RUN brew install pear
RUN brew install phipack
RUN brew install phlawd
RUN brew install phylip
RUN brew install phyml
RUN brew install phyutility
RUN brew install phyx
RUN brew install picard-tools
RUN brew install piler
RUN brew install pilercr
RUN brew install pilon
RUN brew install pixman
# RUN brew install platanus
RUN brew install plink
RUN brew install pkg-config
# RUN brew install plink2
RUN brew install poa
# RUN brew install populations
# RUN brew install poretools
RUN brew install prodigal
# RUN brew install prokka
RUN brew install proteinortho
RUN brew install psmc
# RUN brew install quaff
# RUN brew install quake
RUN brew install quast
RUN brew install quest
RUN brew install quorum
# RUN brew install r8s
RUN brew install racon \
# RUN brew install rampart
rapsearch2 \
raxml \
ray \
rcorrector \
readline \
readseq \
readsim \
# RUN brew install reapr
recon \
repeatmasker \
repeatmodeler \
repeatscout \
rmblast \
rna-star \
rnammer \
ropebwt2
RUN brew install sailfish \
salmon \
sambamba \
samblaster \
# RUN brew install samtools-0.1
samtools \
scarpa \
sdsl-lite \
seqan \
seqtk \
sequel \
sga \
shrimp \
sickle \
simulate-pcr \
skewer \
smalt \
# RUN brew install smrtanalysis
# snap-aligner \ may be exclude
# RUN brew install snap
snoscan \
snp-sites \
snpeff \
soapdenovo \
sortmerna \
spaced \
spades \
# sparseassembler \
spici \
sqlite \
squeezambler \
sratoolkit \
ssake \
# sspace \
# sspace-longread \
stacks \
stringtie \
szip \
swarm
RUN brew install tagdust \ 
tasr \
tbb \
tbl2asn \
tophat \
trans-abyss \ 
#RUN brew install trans_proteomic_pipeline 
transdecoder \
transrate-tools \
trf \
trimadap \
trimal \
trimmomatic \
trinity \
trnascan 
RUN brew install ucsc-genome-browser
RUN brew install uproc
RUN brew install vague
RUN brew install varscan
RUN brew install vcake
RUN brew install vcflib
RUN brew install vcftools
RUN brew install velvet
RUN brew install velvetoptimiser
RUN brew install viennarna
RUN brew install vsearch
RUN brew install vt
RUN brew install weblogo
#wait wiggletools merging
#RUN brew install wiggletools
RUN brew install yaha
