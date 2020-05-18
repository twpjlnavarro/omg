#!/bin/bash

set -x

#-- Input file: raw.json (from TWC 2day forecast)

tmp01=$(mktemp)
{ 
	printf "Tiempo\n"
	printf "(YYYY-MM-DDTHH:MM:SS)\n"
	jq ".validTimeLocal[]" raw.json
} > $tmp01

tmp02=$(mktemp)
{ 
	printf "Temperatura\n"
	printf "(ºC)\n"
	jq ".temperature[]" raw.json
} > $tmp02

tmp03=$(mktemp)
{ 
	printf "Humedad\n"
	printf "(%%)\n"
	jq ".relativeHumidity[]" raw.json
} > $tmp03

paste -d',' $tmp01 $tmp02 $tmp03 > cooked.csv
rm $tmp01 $tmp02 $tmp03
