#!/bin/bash
# Discover meaning of live (now - case-insensitive!!!)


if shopt -q nocasematch
then
	nocase=yes;
else
	nocase=no;
	shopt -s nocasematch;
fi

echo -n "What is the meaning of life? "
read meaning

case $meaning in
		"love" | "children" | "parents" | "family")
				echo "You are a warm-hearted person..."
		;;
		"money" | "career" | "car")
				echo "You should be more concerned with intangible things..."
		;;
		"work" | "education")
				echo "That is just a secondary thing, do not concentrate on it so much..."
		;;
		 "travelling" | "trips")
				echo "That is for sure one of the most important things, but think about whom you want to travel with..."
		;;
		*)
				echo "Well, maybe this is your own meaning of life, who knows..."
		;;
esac
