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

# create GeoPackage file

# convert to SpatialPointsDataFrame
sp::coordinates(cst) <- ~easting+northing

# set projection (check if this is correct)
sp::proj4string(cst) <- sp::CRS("+proj=utm +zone=32 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs")

layer_name <- "mof_cst"

# write GeoPackage file
rgdal::writeOGR(cst, dsn = paste0("gpkg/", layer_name, ".gpkg"), layer = layer_name, driver = "GPKG", overwrite = TRUE)
