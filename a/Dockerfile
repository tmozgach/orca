FROM linuxbrew/linuxbrew:latest
LABEL maintainer="tatyana.mozgacheva@gmail.com"
#https://github.com/bcgsc/orca/issues/2

ENV PERL5LIB /home/linuxbrew/perl5/lib/perl5

# BUILD BioPerl dependencies and prerequisites

# Update the repository sources list
RUN sudo apt-get update

# Install compiler and perl stuff
RUN sudo apt-get install --yes \
  build-essential \
  gcc-multilib \
  perl

# Install libraries that BioPerl dependencies depend on
RUN sudo apt-get install --yes \
  libdb-dev \
  zlib1g-dev \
  graphviz

# Install perl modules 
RUN sudo apt-get install --yes cpanminus

RUN cpanm \
  CPAN::Meta \
  YAML \
  Digest::SHA \
  Module::Build \
  Test::Most \
  Test::Weaken \
  Test::Memory::Cycle \
  Clone

# Install perl modules for network and SSL (and their dependencies)
RUN sudo apt-get install --yes \
  openssl \
  libssl-dev

RUN cpanm \
  IO::Socket::INET6 \
  LWP \
  LWP::Protocol::https

# Install packages for XML processing
RUN sudo apt-get install --yes \
  expat \
  libexpat-dev \
  libxml2-dev \
  libxslt1-dev \
  libgdbm-dev

RUN cpanm \
  XML::Parser \
  XML::Parser::PerlSAX \
  XML::DOM \
  XML::DOM::XPath \
  XML::SAX \
  XML::SAX::Writer \
  XML::Simple \
  XML::Twig \
  XML::Writer \
  XML::LibXML \
  XML::LibXSLT

# Install what counts as BioPerl dependencies
RUN cpanm \
  HTML::TableExtract \
  Algorithm::Munkres \
  Array::Compare \
  Convert::Binary::C \
  Error \
  Graph \
  GraphViz \
  Inline::C \
  PostScript::TextBlock \
  Set::Scalar \
  Sort::Naturally \
  Math::Random \
  Spreadsheet::ParseExcel \
  IO::String \
  JSON \
  Data::Stag

# Install database connectivity packages
RUN sudo apt-get install --yes \
  libdbi-perl \
  libdbd-mysql-perl \
  libdbd-pg-perl \
  libdbd-sqlite3-perl

RUN cpanm \
  DB_File

# Install GD and other graphics dependencies
RUN sudo apt-get install --yes \
 libgd2-xpm-dev

RUN cpanm \
  GD \
  SVG \
  SVG::Graph
  
RUN cpanm \
  Bio::Phylo

#build BioPerl 
RUN cpanm -i Bio::Perl

#build BioPerl dependencies and prerequisites
RUN cpanm \
  Bio::ASN1::EntrezGene
  
RUN brew install gcc zlib berkeley-db 
#mysql

RUN brew install ruby

RUN gem install gnuplot RubyInline terminal-table narray

#DBD::mysql 
RUN cpanm -i DB_File forks Perl::Unsafe::Signals Bio::Root::Version IO::All forks::shared Want Bit::Vector DBD::SQLite DBI File::Which IO::Prompt Inline::C PerlIO::gzip XML::Simple
RUN cpanm -i Module::Build Class::Inspector SOAP::Lite SVG Term::ReadKey Time::HiRes XML::Parser Carp::Clan HTML::Parser LWP URI Inline Inline::C Parse::RecDescent version

# for bowtie
RUN cpanm -i Unix::Processors

RUN brew install python # for pip and setuptools
RUN ln -s python2 /home/linuxbrew/.linuxbrew/bin/python
RUN brew install python3
RUN brew install numpy # for cerulean
RUN pip2 install biopython

RUN brew install libxml2
RUN pip2 install python-igraph
RUN pip2 install pysam
RUN pip2 install htseq pandas pyvcf virtualenv
RUN brew install tcsh

RUN brew install homebrew/science/matplotlib
RUN brew install scipy
 

