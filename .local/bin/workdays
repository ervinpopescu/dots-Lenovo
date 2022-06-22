#!/bin/sh

nr_days_in_month=$(cal | awk 'FNR>2{d+=NF}END{print d}')
current_day=$(date +%d)
remaining=$(awk -v n="$nr_days_in_month" -v c="$current_day" 'BEGIN {print n-c}')

if [[ "$1" == "today" ]];then
  dates=$({ for d in $(seq 1 "$remaining") 
    do
      date +%Y-%m-%d -d "$(date +%Y-%m-%d) +$d days"
    done
  } | sort)

  # echo "$dates"

  for d in $dates
  do
    case $(date -d "$d" "+%a") in
      Lu|Ma|Mi|Jo|Vi)
        printf "%s\n" "$(date +%d.%m.%Y -d "$d")";;
      *)
        continue;;
    esac
  done 
else
  dates=$({ for d in $(seq 1 "$nr_days_in_month") 
      do
        date +%Y-%m-%d -d "$(date +%Y-%m-01) +$d days"
      done
    } | sort)

    # echo "$dates"

    for d in $dates
    do
      case $(date -d "$d" "+%a") in
        Lu|Ma|Mi|Jo|Vi)
          printf "%s\n" "$(date +%d.%m.%Y -d "$d")";;
        *)
          continue;;
      esac
    done 
fi

