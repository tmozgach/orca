FROM linuxbrew/linuxbrew:latest
LABEL maintainer="tatyana.mozgacheva@gmail.com"
#https://github.com/bcgsc/orca/issues/2
ENV PERL5LIB /home/linuxbrew/perl5/lib/perl5
RUN brew install perl cpanm gcc zlib expat berkeley-db mysql

RUN brew install ruby

RUN gem install gnuplot RubyInline terminal-table narray

RUN cpanm -i -f DBD::mysql DB_File forks Perl::Unsafe::Signals Bio::Root::Version IO::All forks::shared Want Bit::Vector DBD::SQLite DBI File::Which IO::Prompt Inline::C PerlIO::gzip XML::Simple
RUN cpanm -i Module::Build Class::Inspector SOAP::Lite SVG Term::ReadKey Time::HiRes XML::Parser Carp::Clan HTML::Parser LWP URI Inline Inline::C Parse::RecDescent version
# for bowtie
RUN cpanm -i Unix::Processors
RUN cpanm -i -f Bio::Perl

RUN brew install python # for pip and setuptools
RUN brew install python3
RUN brew install numpy # for cerulean
RUN pip2 install biopython

RUN brew install libxml2
RUN pip2 install python-igraph
RUN pip2 install pysam
RUN pip2 install htseq pandas pyvcf virtualenv
RUN ln --symbolic --force /home/linuxbrew/.linuxbrew/bin/python2 /home/linuxbrew/.linuxbrew/bin/python
RUN brew install tcsh

RUN brew install homebrew/science/matplotlib
RUN brew install scipy
 

