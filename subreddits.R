## install readr 
# install.packages("readr")
library(readr)

# note: data files are stored in directory data/
network_filename = "data/soc-redditHyperlinks-body.tsv"

# political subreddit list (can change)
# source: https://github.com/valentinhofmann/politosphere/blob/main/data/subreddits.txt
political_subreddits_filename = "data/subreddits.txt"

# read network file
df = readr::read_tsv(network_filename)
head(df)

# read list of political subreddits 
political_subs = readr::read_delim(political_subreddits_filename, '\n', col_names = FALSE)
head(political_subs)

# subset df according to political subreddits
pol_df = df[df$SOURCE_SUBREDDIT %in% political_subs$X1,]
head(pol_df)
dim(pol_df)