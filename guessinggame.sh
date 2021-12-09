#!bin/bash
# VARIABLES
files=$(ls | wc -l | tr -d " ")

# USER INTERACTION
echo "----------"
echo "Hey uhh..."
sleep 0.5
echo "How ya doin' there matey?"
sleep 2
echo "Let's play a game... It's easy! Guess how many files are in this directory."
sleep 2 
echo "You can win a very special prize ;)"
echo "----------"
sleep 2
echo "** Enter no. of files in directory **: "

while [[ $guess -ne $files ]]
do
	read -p "Enter guess: " guess
	if [[ $guess -eq $files ]]
	then
 		echo -e "That's correct! Here's an ancient Japanese Katana: ()==)==========>\n"
	elif [[ $guess -lt $files ]]
	then 
		echo -e "That is NOT correct... A bit higher, perhaps?\n"
	else
		echo -e "Aiming high is good. But maybe this one was a bit too high?\n"
	fi
done
