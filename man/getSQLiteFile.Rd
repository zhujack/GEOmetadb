\name{getSQLiteFile}
\alias{getSQLiteFile}
\title{Download and unzip the most recent GEOmetadb SQLite file}
\description{
  This function is the standard method for downloading and unzipping the
  most recent GEOmetadb SQLite file from the server. Note: size of the full GEOmetadb.sqlite.gz 
  could be over 10GB and the demo database is 25MB (use type="demo")
}
\usage{
getSQLiteFile(destdir = getwd(), destfile = "GEOmetadb.sqlite.gz", type = "normal")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{destdir}{The destination directory of the downloaded file}
  \item{destfile}{The filename of the downloaded file. This filename
    should end in ".gz" as the unzipping assumes that is the case}
  \item{type}{type of GEOmetadb.sqlite to download, if it is 'normal', a full database will be downloaded, otherwise a demo database will be downloaded, which is 25MB. }
}
\value{
  Prints some diagnostic information to the screen.

  Returns the local filename for use later.
}
\author{Sean Davis <sdavis2@mail.nih.gov>}
\examples{
## Download the demo GEOmetadb database:
if( !file.exists("GEOmetadb.sqlite") ) {
    demo_sqlfile <- getSQLiteFile(destdir = getwd(), destfile = "GEOmetadb.sqlite.gz", type = "demo")
} else {
    demo_sqlfile <- "GEOmetadb.sqlite"
}

## Download the full GEOmetadb database:
\dontrun{geometadbfile <- getSQLiteFile()
}
}