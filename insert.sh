echo $1
echo $2
echo $3

curl -X POST --data-binary 'update=INSERT DATA { <http://test.com/'$1'> <http://test.com/'$2'> <http://test.com/'$3'> . }' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql
