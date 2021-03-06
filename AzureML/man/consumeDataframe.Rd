% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/consume.R
\name{consumeDataframe}
\alias{consumeDataframe}
\title{Use a web service to score a data frame}
\usage{
consumeDataframe(apiKey, requestUrl, scoreDataFrame,
  globalParam = setNames(list(), character(0)), batchSize = 300,
  retryDelay = 0.3)
}
\arguments{
\item{apiKey}{primary access key of the web service as a string}

\item{requestUrl}{API URL}

\item{scoreDataFrame}{the data frame to be scored}

\item{globalParam}{global parameters entered as a list, default value is an empty list}

\item{batchSize}{batch size of each batch, default value is 300}

\item{retryDelay}{the time in seconds to delay before retrying in case of a server error, default value is 0.3 seconds}
}
\value{
returnDataFrame data frame containing results returned from web service call
}
\description{
Score a data frame, where each row is the input to the scoring function, using a Microsoft Azure Machine Learning web service
}
\examples{
\dontrun{
add <- function(x,y) { return(x+y) }
newService <- publishWebService("add", "add",
 list("x"="int","y"="int"), list("z"="int"), wsID, authToken)
webserviceDetails <- newService[[1]]
endpoints <- newService[[2]]

df <- data.frame("x"=c(1,2), "y"=c(3,4))
response <- consumeDataframe(endpoints[[1]]$PrimaryKey, endpoints[[1]]$ApiLocation, df)
}
}
\seealso{
\code{\link{discoverSchema}} \code{\link{publishWebService}}

Other consumption functions: \code{\link{consumeFile}};
  \code{\link{consumeLists}}
}

