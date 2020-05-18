#!/bin/bash
set -x

lat=18.483402  lon=-69.929611  #-- Santo Domingo
lat=19.470800  lon=-70.692039  #-- Santiago de los Caballeros

wget -O raw.json "https://api.weather.com/v3/wx/forecast/hourly/2day?geocode=${lat},${lon}&format=json&units=m&language=es-ES&apiKey=96deeadd2d9f4a339eeadd2d9fda3321"
