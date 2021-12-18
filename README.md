# MOFgeoDB
Database for MarburgOpenForest related Data



# Installation

Download the whole repositiory or

```
git clone https://github.com/MOF/MOFgeoDB.git
```

# Usage

MOFgeoDB.qgz can be opend in [QGIS 3.X](https://www.qgis.org/). The database is already linked in the project and is ready to use.
The MOFgeoDB.sqlite file contains all tables, geometries and information collected since summer 2016 by various courses and projects in the Marburg Open Forest.

Usage in R is possible with the RSQlite-Package.
```
install.packages("RSQlite")
library(RSQlite)

# establish the connection
MOFgeoDB <- dbConnect(SQLite(), "PATH / MOFgeoDB.sqlite")

```
Spatial layers can be direcly accessed with `sf`.

```
install.packages(sf)
install.packages(mapview)
library(sf)
library(mapview)

# show all available spatial layers
st_layers("PATH / MOFgeoDB.sqlite")

# load one specific layer
trees = st_read("PATH / MOFgeoDB.sqlite", layer = "vw_tree_living")
mapview(trees)

```

# Information
More information and a description of the database can be found under https://marburgopenforest.github.io/MOFexplain/.