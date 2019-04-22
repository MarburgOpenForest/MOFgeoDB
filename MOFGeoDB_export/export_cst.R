# export CST

library(RSQLite)

setwd("..")

# establish database connection
MOFGeoDB <- dbConnect(SQLite(), "MOFGeoDB.sqlite")

# select the trees table
trees <- dbReadTable(MOFGeoDB, "trees")



# export cst trees with the right columns
cst <- trees[substr(trees$tree_name, 1,7) == "mof_cst",
             c("tree_name", "easting", "northing", "species")]

# write into the csv folder
write.csv(cst, "csv/mof_cst.csv", row.names = FALSE)
