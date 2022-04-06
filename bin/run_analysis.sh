mkdir results
mkdir data
curl -L -o data/frankenstein.txt https://www.gutenberg.org/files/84/84-0.txt
curl -L -o data/dracula.txt https://www.gutenberg.org/files/345/345-0.txt

for book in dracula frankenstein
do
    python3 bin/countwords.py data/${book}.txt --num 100 > results/${book}.csv
    python3 bin/plotcounts.py results/${book}.csv --outfile results/${book}.pdf
done
