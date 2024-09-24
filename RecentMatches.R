library(httr)
library(jsonlite)

## Testing API calls using I_D_B_F steam profile
## OpenDota API: https://docs.opendota.com/#tag/players/
##recent matches 
##https://api.opendota.com/api/players/{account_id}/recentMatches
#Steam32 = 121941711

steamID <- 76561198082207439
steam32ID <- 121941711 #steamID-76561197960265730
#print(steam32ID)

#Create the API call for specific information
api_start <- "https://api.opendota.com/api/players/"
api_end <- "/matches"

#Make the call, save result to "recent_matches"
api_call <- paste(api_start, steam32ID, api_end, sep="")
#api_call <- "https://api.opendota.com/api/players/121941711/matches"
recent_matches <- GET(api_call)

#display the data
print(recent_matches)
#raw_data <- rawToChar(recent_matches$content)
data = fromJSON(rawToChar(recent_matches$content))
print(data)

#If player slot < 5 radiant
