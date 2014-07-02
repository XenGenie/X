#!/bin/bash
array=(xInbox xUpload xUsers xNexus xAffiliations xDownloads xNewsletter xQuotes xSupport)

echo "Array size: ${#array[*]}"

echo "Array items:"
for item in ${array[*]}
do
    printf "Adding   %s\n" $item
    git submodule add https://github.com/SuperDomX/$item $item
done