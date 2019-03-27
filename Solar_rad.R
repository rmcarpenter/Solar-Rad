

solarrad=read.csv("TMY3_StationsMeta.csv")
names(solarrad)

solarrad$Class=as.numeric(solarrad$Class)

#States

states = solarrad %>% 
  group_by(State) %>% 
  summarise(n = n())  # how many sites per state 

### map 

r_map <- leaflet(solarrad) %>%
  addTiles() %>%
  addCircleMarkers(~lat = Latitude, ~lng = Longitude)

r_map



