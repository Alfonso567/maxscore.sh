#!/bin/bash
# maxscore.sh
# Alfonso Lopez
# CPSC298

scores=()
echo "Enter 5 positive numbers:"
for i in {1..5}; do
    read -p -r "Score $i: " num
    if ! [[ "$num" =~ ^[0-9]+$ ]] || [ "$num" -le 0 ]; then
        echo "Invalid input. Please enter a positive numbers."
        exit 1
    fi
    scores+=("$num")
done

highest=${scores[0]}
for s in "${scores[@]}"; do
    if [ "$s" -gt "$highest" ]; then
        highest=$s
    fi
done

echo "Highest score: $highest"

echo "Scores and differences:"
for s in "${scores[@]}"; do
    diff=$((highest - s))
    echo "Score: $s, Difference: $diff"
done
