# Examples of using the bigrquery package to search the Measurement Lab BigQuery NDT dataset
#
# When first called by the script, thebigrquery package will open a web browser on your 
# system to authenticate. Use a Google account that is subscribed to mlab-discuss@measurementlab.net 
# to authenticate.
# 
# This example R script takes a query from a text file, queries the M-Lab NDT data on BigQuery, and 
# saves the result to a dataframe for further analysis. 

require(bigrquery)
require(readr)

# Download tests from the Washington, DC metro region in 2016
DC_2016_download_query <- read_file("queries/download-tests-2016-Washington-DC.txt")
DC_2016_download_results <- query_exec(DC_2016_download_query, project="measurement-lab", max_pages=Inf)