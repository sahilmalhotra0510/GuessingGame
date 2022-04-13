function guessinggame {
	local guess=0
	local nooffiles=$(ls -1q | wc -l)

	while [[ $guess -ne $nooffiles ]]
	do
		echo "Guess the number of files in the directory: "
		read guess
		if [[ $guess -gt $nooffiles ]]
		then
			echo "Your guess is too high! please Go lower!"
		elif [[ $guess -lt $nooffiles ]]
		then
			echo "Your guess is too low!  please Go higher!"
		fi
	done
	
	echo "Congratulations! The number of files is  $nooffiles!"
	echo "good job"
	echo "well played"
	
}

guessinggame