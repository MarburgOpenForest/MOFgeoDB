# MOFGeoDB
Database for MarburgOpenForest related Data



# Installation

Download the whole repositiory or

```
git clone https://github.com/Nature40/MOFGeoDB.git
```

# Usage

MOFGeoDB.qgz can be opend in QGIS 3.X.X (https://www.qgis.org/de/site/). The database is already linked in the project and is ready to use.
The MOFGeoDB.sqlite file contains all tables, geometries and information collected since summer 2016 by various courses and projects in the Marburg Open Forest.

Usage in R is possible with the RSQlite-Package.
```
install.packages("RSQlite")
library(RSQlite)

# establish the connection
MOFGeoDB <- dbConnect(SQLite(), "PATH / MOFGeoDB.sqlite")

```
Spatial layers can be direcly accessed with `sf`.

```
install.packages(sf)
install.packages(mapview)
library(sf)
library(mapview)

# show all available spatial layers
st_layers("PATH / MOFGeoDB.sqlite")

# load one specific layer
trees = st_read("PATH / MOFGeoDB.sqlite", layer = "vw_tree_living")
mapview(trees)

```


**_Big thanks to Dietrich Goettlicher!_**

