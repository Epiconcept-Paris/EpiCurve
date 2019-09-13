library(EpiCurve)
## Hourly - non-aggregated cases

DF <- read.csv("hourly_unaggregated_cases.csv", stringsAsFactors=FALSE)


EpiCurve(DF,
         date = "UTS",
         period = "hour",
         split = 1,
         color ="#339933",
         ylabel="Number of cases",
         xlabel=sprintf("From %s to %s", min(DF$UTS), max(DF$UTS)))



## Hourly - non-aggregated cases with factors

DF <- read.csv("hourly_unaggregated_cases_factors.csv", stringsAsFactors=FALSE)

EpiCurve(DF,
         date = "UTS",
         period = "hour",
         split = 1,
         cutvar = "Confirmed",
         color = c("#339933","#eebb00"),
         xlabel=sprintf("From %s to %s", min(DF$UTS), max(DF$UTS)))


EpiCurve(DF,
         date = "UTS",
         period = "hour",
         split = 1,
         cutvar = "Confirmed",
         cutorder = c("NO", "YES"),
         color = c("#339933","#eebb00"),
         xlabel=sprintf("From %s to %s", min(DF$UTS), max(DF$UTS)))


