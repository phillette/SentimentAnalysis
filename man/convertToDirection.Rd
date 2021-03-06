% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analyzeSentiment.R
\name{convertToDirection}
\alias{convertToDirection}
\title{Convert continuous sentiment to direction}
\usage{
convertToDirection(sentiment)
}
\arguments{
\item{sentiment}{Vector, matrix or data.frame with sentiment scores.}
}
\value{
If a vector is supplied, it returns a factor with three levels representing 
positive, neutral and negative content. Otherwise, it returns a data.frame with the 
corresponding columns being exchanged.
}
\description{
This function converts continuous sentiment scores into a their corresponding
sentiment direction. As such, the result is a factor with three levels 
indicating positive, neutral and negative content. In contrast
to \code{\link{convertToBinaryResponse}}, neutral documents have their own category.
}
\details{
If a matrix or data.frame is provided, this routine does not touch
all columns. In fact, it scans for those where the column name starts with
"Sentiment" and changes these columns only. Hence, columns with pure 
negativity, positivity or ratios or word counts are ignored.
}
\examples{
sentiment <- c(-1, -0.5, +1, 0.6, 0)
convertToBinaryResponse(sentiment)
convertToDirection(sentiment)

df <- data.frame(No=1:5, Sentiment=sentiment)
df
convertToBinaryResponse(df)
convertToDirection(df)
}
\seealso{
\code{\link{convertToBinaryResponse}}
}
\keyword{evaluation}
\keyword{sentiment}
