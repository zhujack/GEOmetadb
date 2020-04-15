\name{GEOmetadb-package}
\alias{GEOmetadb-package}
\alias{GEOmetadb}
\docType{package}
\title{
Query NCBI GEO metadata from a local SQLite database
}
\description{
  The NCBI Gene Expression Omnibus (GEO) represents the largest public
  repository of microarray data. However, finding data of interest can
  be challenging using current tools. GEOmetadb is an attempt to make
  access to the metadata associated with samples, platforms, and
  datasets much more feasible. This is accomplished by parsing all the
  NCBI GEO metadata into a SQLite database that can be stored and
  queried locally. GEOmetadb is simply a thin wrapper around the SQLite
  database along with associated documentation. Finally, the SQLite
  database is updated regularly as new data is added to GEO and can be
  downloaded at will for the most up-to-date metadata. 
}
\details{
\tabular{ll}{
Package: \tab GEOmetadb\cr
Type: \tab Package\cr
Version: \tab 1.1.5\cr
Date: \tab 2008-09-09\cr
License: \tab Artistic-2.0\cr
}
}
\author{
Jack Zhu and Sean Davis

Maintainer: Jack Zhu <zhujack@mail.nih.gov>
}
\references{
http://meltzerlab.nci.nih.gov/apps/geo, http://gbnci.abcc.ncifcrf.gov/geo/
}
\keyword{ package }
\examples{
## Use the demo GEOmetadb database:
if( !file.exists("GEOmetadb.sqlite") ) {
    demo_sqlfile <- getSQLiteFile(destdir = getwd(), destfile = "GEOmetadb.sqlite.gz", type = "demo")
} else {
    demo_sqlfile <- "GEOmetadb.sqlite"
}
columnDescriptions(demo_sqlfile)[1:5,]
a <- columnDescriptions(demo_sqlfile)[1:5,]
b <- geoConvert('GPL96', out_type='GSM', sqlite_db_name=demo_sqlfile)

## Download the full GEOmetadb database:
\dontrun{geometadbfile <- getSQLiteFile()
}
}