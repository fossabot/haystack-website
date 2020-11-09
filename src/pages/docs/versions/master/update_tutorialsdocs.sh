#!/bin/bash

# Master data
versions=("" "latest/" "v0.4.0/" "v0.5.0/") 

for i in "${versions[@]}"
do
    j=$i
    if [ "$i" = "latest/" ]; then
        j=''
    fi

    wget https://raw.githubusercontent.com/deepset-ai/haystack/master/docs/${j}_src/tutorials/tutorials/1.md -O ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/1.md 
    wget https://raw.githubusercontent.com/deepset-ai/haystack/master/docs/${j}_src/tutorials/tutorials/2.md -O ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/2.md 
    wget https://raw.githubusercontent.com/deepset-ai/haystack/master/docs/${j}_src/tutorials/tutorials/3.md -O ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/3.md 
    wget https://raw.githubusercontent.com/deepset-ai/haystack/master/docs/${j}_src/tutorials/tutorials/4.md -O ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/4.md 
    wget https://raw.githubusercontent.com/deepset-ai/haystack/master/docs/${j}_src/tutorials/tutorials/5.md -O ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/5.md 
    wget https://raw.githubusercontent.com/deepset-ai/haystack/master/docs/${j}_src/tutorials/tutorials/6.md -O ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/6.md

    sed -i 's/<!---/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/1.md 
    sed -i 's/--->/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/1.md 
    sed -i 's/<!---/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/2.md 
    sed -i 's/--->/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/2.md 
    sed -i 's/<!---/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/3.md 
    sed -i 's/--->/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/3.md 
    sed -i 's/<!---/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/4.md 
    sed -i 's/--->/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/4.md 
    sed -i 's/<!---/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/5.md 
    sed -i 's/--->/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/5.md 
    sed -i 's/<!---/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/6.md 
    sed -i 's/--->/---/' ./src/pages/docs/versions/master/${i}site/en/tutorials/tutorials/6.md
done