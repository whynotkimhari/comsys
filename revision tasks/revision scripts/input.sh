#!/bin/bash

echo -n "Please enter your name: "
read name
echo Hello, $name

echo -n "Enter your fav country, $name: "
read favcountry
echo "Let me guess, is $favcountry your fav country?"

echo -n "Enter your last name as well, $name: "
read lastname
echo "Hi sir, your full name is $lastname $name, right?"
