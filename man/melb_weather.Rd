% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weather.R
\name{melb_weather}
\alias{melb_weather}
\title{API to access Melbourne microclimate sensor data}
\usage{
melb_weather(
  from = to - 6L,
  to = Sys.Date(),
  site = NULL,
  sensor_type = NULL,
  app_token = NULL
)
}
\arguments{
\item{from}{Starting date. Earliest measurement is 2019-11-15}

\item{to}{Ending date.}

\item{site}{The site identifier. By default will pull in all locations that have weather sensors \code{\link[=pull_weather_sensors]{pull_weather_sensors()}}.}

\item{sensor_type}{The type of microclimate measurement to extract see \code{\link[=pull_weather_types]{pull_weather_types()}} for details.}

\item{app_token}{Characters giving the application token. A limited number of
requests can be made without an app token (\code{NULL}), but they are subject
to much lower throttling limits than request that do include one. Sign up
for an app token \href{https://data.melbourne.vic.gov.au/profile/app_tokens}{here}.}
}
\value{
A tibble including these variables as follows:
\itemize{
\item \code{site}: Site identifier, this is the location of the weather sensor
\item \code{date_time}: Date time when the measurement was recorded
\item \code{date}: Date associated with \code{date_time}
\item \code{sensor_type}: The type of microclimate sensor reading
\item \code{units}: The units that \code{value} is in
\item \code{value}: The value of the reading
}
}
\description{
API to access Melbourne microclimate sensor data
}
\details{
It provides the API using \href{https://dev.socrata.com/foundry/data.melbourne.vic.gov.au/u4vh-84j8}{Socrata},
where microclimate measurements are updated on a dailly basis.
For data documentation, including a data dictionary see the \href{https://data.melbourne.vic.gov.au/Environment/Microclimate-Sensor-Readings/u4vh-84j8}{Melbourne Open Data Portal}.
Please refer to Melbourne Open Data Portal for more details about the dataset and
its policy.
}
\examples{
\dontrun{
# Retrieve the last weeks data
melb_weather()

# Retrieve the last week but for a single location (Pelham St, Carlton)
melb_weather(site = "arc1047")

# Retrieve the last week but only ambient air temperature
melb_weather(sensor_type = "TPH.TEMP")

}
}
\seealso{
\link{melb_walk}, \link{pull_weather_sensors}, \link{pull_weather_types}
}
