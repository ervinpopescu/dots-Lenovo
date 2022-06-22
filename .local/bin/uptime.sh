#!/bin/bash

#Days,hours

days=$(awk '{print int($1 / 86400)}'</proc/uptime)
hours=$(awk '{print int(($1 % 86400) / 3600)}' < /proc/uptime)

if [[ "$days" == "0" ]]
then
  printf "%s%s%s" "up " "$hours" "h"
  exit 0
fi
if [[ "$hours" == "24" ]]
then
  printf "%s%s%s" "up " "$days" "d"
  exit 0
fi

printf "%s%s%s%s%s" "up " "$days" "d," "$hours" "h"

#Days,hours,minutes

# days=$(awk '{print int($1 / 86400)}'</proc/uptime)
# hours=$(awk '{print int(($1 % 86400) / 3600)}' < /proc/uptime)
# minutes=$(awk '{print int((($1 % 86400) %3600) / 60)}' < /proc/uptime)

# if [[ "$days" == "0" ]]
# then
#   printf "%s%s%s%s" "up " "$hours" "h," "$minutes" "m"
#   printf "%s%s%s%s" "up " "$hours" "h"
#   exit 0
# fi
# if [[ "$hours" == "24" ]]
# then
#   printf "%s%s" "up " "$days" "d"
#   exit 0
# fi
# if [[ "$minutes" == "0" ]]
# then
#   printf "%s%s" "up " "$days" "d," "$hours" "h"
#   exit 0
# fi

# printf "%s%s%s%s%s%s%s" "up " "$days" "d," "$hours" "h," "$minutes" "m"
# printf "%s%s%s%s" "up " "$days" "d," "$hours" "h"
