#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. A silly name for a dog: " NOUN1

read -p "2. Name an activity you do in the winter: " VERB1
 
read -p "3. Your favorite color: " ADJECTIVE1

read -p "4. The best ice cream flavor: " NOUN2

read -p "5. A word that describes your mom: " ADJECTIVE2

read -p "6. Something you do in the shower: " VERB2

read -p "7. A prehistoric animal: " NOUN3

read -p "8. A word to describe the a sunset: " ADJECTIVE3

echo "Once upon a time, a $NOUN1 decided it was time to $VERB1. This wasn't just any ordinary day—no, it was a $ADJECTIVE1 day, and the world needed a hero. Armed with nothing but a rusty old $NOUN2, our hero set off on a $ADJECTIVE2 journey."

echo "Along the way, it encountered a group of squirrels trying to $VERB2 a giant $NOUN3. "That looks $ADJECTIVE3," the hero thought, but continued on, knowing that the true adventure still awaited."

