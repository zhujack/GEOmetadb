\name{columnDescriptions}
\alias{columnDescriptions}
\title{Get column descriptions for the GEOmetadb database}
\description{
  Searching the GEOmetadb database requires a bit of knowledge about the
  structure of the database and column descriptions. This function
  returns those column descriptions for all columns in all tables in the
  database.
}
\usage{
columnDescriptions(sqlite_db_name='GEOmetadb.sqlite')
}
\arguments{
  \item{sqlite_db_name}{The filename of the GEOmetadb sqlite database
    file}
}
\value{
  A three-column data.frame including TableName, FieldName, and Description.
}
\author{Sean Davis <sdavis2@mail.nih.gov>}
\examples{
## Use the demo GEOmetadb database:
if( !file.exists("GEOmetadb.sqlite") ) {
    demo_sqlfile <- getSQLiteFile(destdir = getwd(), destfile = "GEOmetadb.sqlite.gz", type = "demo")
} else {
    demo_sqlfile <- "GEOmetadb.sqlite"
}
columnDescriptions(demo_sqlfile)[1:5,]

## Download the full GEOmetadb database:
\dontrun{geometadbfile <- getSQLiteFile()
}
}