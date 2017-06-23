#Date: 22/06/2017
#Author: Tatyana Mozgacheva tmozgacheva@bcgsc.ca
#Description: This script generates a table of added 
#and removed software, and their versions in the new release of ORCA
#Procedure:
# 1) Run the Docker container using `docker run -ti ID_IMAGE` 
#    in the test server docker2 OR
#    Run a script /usr/local/bin/orca in the orca1 server; 
# 2) Inside the Docker containers of old and new ORCAs, type `brew list --versions`;
# 3) Copy the outputs above in the list_old_orca.txt and list_new_orca.txt files, respectively;
# 4) Put these files inside a folder with that script;
# 5) Run the following script:

install.packages("tidyverse")
library(tidyverse)

old_orca <- read_delim("list_old_orca.txt", " ", col_names = c("formula","version"))
new_orca <- read_delim("list_new_orca.txt", " ", col_names = c("formula","version"))
full_join <- full_join(old_orca, new_orca, by = "formula")
full_join$status <- NA
full_join$status[is.na(full_join$version.x)] <- 'Added'
full_join$status[is.na(full_join$version.y)] <- 'Removed'
full_join$status[full_join$version.x != full_join$version.y] <- 'Updated'
