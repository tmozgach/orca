# Date: 22/06/2017
# Author: Tatyana Mozgacheva tmozgacheva@bcgsc.ca
# Description: This script generates a table of added 
# and removed software, and their versions in the new release of ORCA
# in HTML and TSV format (table_ORCA.html and table_ORCA.tsv).
# Procedure:
# 1) Run the Docker container using `docker run -ti ID_IMAGE` 
#    in the test server docker2 OR
#    Run a script /usr/local/bin/orca in the orca1 server; 
# 2) Inside the Docker containers of old and new ORCAs, type `brew list --versions`;
# 3) Copy the outputs above in the list_old_orca.txt and list_new_orca.txt files, respectively;
# 4) Put these files inside a folder with that script;
# 5) Run the following script:

install.packages("tidyverse")
install.packages("knitr")
install.packages("DT")
library(tidyverse)
library(knitr)
library(DT)

old_orca <- read_delim("list_old_orca.txt", " ", col_names = c("formula","previous"))
new_orca <- read_delim("list_new_orca.txt", " ", col_names = c("formula","latest"))

#By new rules, a formulae with old version contains @ instead of -. Example: samtools@0.1
old_orca$formula <- gsub("@", "-", old_orca$formula)
new_orca$formula <- gsub("@", "-", new_orca$formula)

#Don't care about a minor version of the formulae. 1.2 is equal to 1.2_3 for user.
old_orca$previous <- gsub("_*","",old_orca$previous)
new_orca$latest <- gsub("_*","",new_orca$latest)

full_join <- full_join(old_orca, new_orca, by = "formula")
full_join$status <- NA
full_join$status[is.na(full_join$previous)] <- 'Added'
full_join$status[is.na(full_join$latest)] <- 'Removed'
full_join$status[full_join$previous != full_join$latest] <- 'Updated'
full_join[is.na(full_join)] <- " "

#full_join <- full_join[full_join$previous != full_join$latest,]

# Sort
full_join <- arrange(full_join,full_join$formula)

# Export to TSV file
write.table(full_join, file='table_ORCA.tsv', quote=FALSE, sep='\t', col.names = NA)

# Color "Added" to green, "Removed" to red
full_join <- datatable(full_join, rownames = FALSE) %>%
  formatStyle(columns = "status", 
              background = styleEqual(c("Added", "Removed"), c("green", "red"))) 

# Export to HTML file
saveWidget(full_join, 'table_ORCA.html')

