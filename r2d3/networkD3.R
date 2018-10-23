library(networkD3)


# simple network

# Create fake data
src <- c("A", "A", "A", "A",
         "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J",
            "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)

# Plot
simpleNetwork(networkData)

# radial network
URL <- paste0(
  "https://cdn.rawgit.com/christophergandrud/networkD3/",
  "master/JSONdata//flare.json")

## Convert to list format
Flare <- jsonlite::fromJSON(URL, simplifyDataFrame = FALSE)

# Use subset of data for more readable diagram
Flare$children = Flare$children[1:3]

radialNetwork(List = Flare, fontSize = 10, opacity = 0.9)
