# MOFGeoDB
Database for MarburgOpenForest related Data

The MOFGeoDB.sqlite file contains all tables, geometries and information collected since summer 2016 by various courses and projects in the Marburg Open Forest.

# Usage
Clone or download the repository on your local machine. The MOFGeoDB.sqlite and MOFGeoDB.qgz files need to be in the same directroy in order to work properly.

MOFGeoDB.qgz can be opend in QGIS 3.X.X (https://www.qgis.org/de/site/). The database is already linked in the project and is ready to use.

Usage in R is currenty possible with the RSQlite-Package. More tutorials, wrappers and conveniance functions are planed.

```
install.packages("RSQlite")
library(RSQlite)

# establish the connection
MOFGeoDB <- dbConnect(SQLite(), "PATH / MOFGeoDB.sqlite")

```

**_Big thanks to Dietrich Goettlicher!_**

