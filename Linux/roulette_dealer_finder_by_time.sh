find / -type f -iname "$1_Dealer_schedule" 2>/dev/null -exec grep --no-filename "$2" {} + | awk '{print $5 " " $6 }'
