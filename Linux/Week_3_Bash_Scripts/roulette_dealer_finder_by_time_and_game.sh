case $3 in
	"BlackJack")
		find / -type f -iname "$1_Dealer_schedule" 2>/dev/null -exec grep --no-filename "$2" {} + | awk '{print "BlackJack Dealer: " $3 " " $4}'
		;;
	"Roulette")
		find / -type f -iname "$1_Dealer_schedule" 2>/dev/null -exec grep --no-filename "$2" {} + | awk '{print "Roulette Dealer: " $5 " " $6}'
		;;
	"Texas_Hold_Em")
		find / -type f -iname "$1_Dealer_schedule" 2>/dev/null -exec grep --no-filename "$2" {} + | awk '{print "Texas Hold Em Dealer: " $7 " " $8}'
		;;
	*)
		find / -type f -iname "$1_Dealer_schedule" 2>/dev/null -exec grep --no-filename "$2" {} + | awk '{print "Blackjack Dealer: " $3 " " $4 "\n" "Roulette Dealer: " $5 " " $6 "\n" "Texas Hold Em Dealer: " $7 " " $8}'
		;;
esac
