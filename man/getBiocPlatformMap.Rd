\name{getBiocPlatformMap}
\alias{getBiocPlatformMap}
\title{Get mappings between GPL and Bioconductor microarry annotation packages}
\description{
  Query the gpl table and get GPL information of a given list of Bioconductor microarry annotation packages. Note currently the GEOmetadb does not contains all the mappings, but we are trying to construct a relative complete list.
}
\usage{
getBiocPlatformMap(con, bioc='all')
}
\arguments{
  \item{con}{Connection to the GEOmetadb.sqlite database}
  \item{bioc}{Character vector of Biocondoctor microarry annotation packages, e.g. c('hgu133plus2','hgu95av2').  'all' returns all mappings. 
}
}
\value{
  A six-column data.frame including GPL title, GPL accession, bioc_package, manufacturer, organism, data_row_count.
}
\references{http://meltzerlab.nci.nih.gov/apps/geo}
\author{Jack Zhu <zhujack@mail.nih.gov>, Sean Davis <sdavis2@mail.nih.gov>}
\examples{
## Use the demo GEOmetadb database:
if( !file.exists("GEOmetadb.sqlite") ) {
    demo_sqlfile <- getSQLiteFile(destdir = getwd(), destfile = "GEOmetadb.sqlite.gz", type = "demo")
} else {
    demo_sqlfile <- "GEOmetadb.sqlite"
}

con <- dbConnect(SQLite(), demo_sqlfile)
getBiocPlatformMap(con)[1:5,]
getBiocPlatformMap(con, bioc=c('hgu133a','hgu95av2'))
dbDisconnect(con)
	
## Download the full GEOmetadb database:
\dontrun{geometadbfile <- getSQLiteFile()
}
\keyword{ database }
