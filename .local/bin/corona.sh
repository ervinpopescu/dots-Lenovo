#!/bin/bash

/usr/bin/corona RO > /mnt/data/corona_tables/corona-today

sleep 2

total_cases=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 6)
cases_today=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 8)
total_deaths=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 10)
deaths_today=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 12)
recovered=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 14)
active=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 16)
critical=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 18)
per_million=$(grep Romania /mnt/data/corona_tables/corona-today | tr -s ' ' | cut -d ' ' -f 20)

tee -a /mnt/data/corona_tables/corona <<< "$(date -I) $(date +%H:%M)  | $total_cases  | $cases_today   | $total_deaths  | $deaths_today  | $recovered  | $active  | $critical  | $per_million  |"

tee -a /mnt/data/corona_tables/corona_unformatted <<< "$(date -I) $(date +%H:%M)   $total_cases  $cases_today   $total_deaths  $deaths_today  $recovered  $active  $critical  $per_million"

tee -a /mnt/data/corona_tables/corona <<< "$(date -I) $(date +%H:%M) | $total_cases | $cases_today | $total_deaths | $deaths_today | $recovered | $active | $critical | $per_million |"

tee -a /mnt/data/corona_tables/corona_unformatted <<< "$(date -I) $(date +%H:%M) $total_cases $cases_today $total_deaths $deaths_today $recovered $active $critical $per_million"
