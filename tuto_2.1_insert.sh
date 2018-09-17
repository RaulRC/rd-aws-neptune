#curl -X POST --data-binary 'update=INSERT DATA { <http://dbpedia.org/resource/Prince_William_of_Wales> <http://purl.org/vocab/relationship/siblingOf> <http://dbpedia.org/resource/Prince_Harry_of_Wales> . }' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql

#curl -X POST --data-binary 'update=INSERT DATA { <http://dbpedia.org/resource/Elizabeth_Bowes-Lyon> <http://purl.org/vocab/relationship/ancestorOf> <http://dbpedia.org/resource/Elizabeth_II_of_the_United_Kingdom> . }' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql

#curl -X POST --data-binary 'update=INSERT DATA { <http://dbpedia.org/resource/Elizabeth_II_of_the_United_Kingdom> <http://purl.org/vocab/relationship/ancestorOf> <http://dbpedia.org/resource/Charles%2C_Prince_of_Wales> . }' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql

#curl -X POST --data-binary 'update=@prefix rel:<http://purl.org/vocab/relationship#> . INSERT DATA { <http://dbpedia.org/resource/Charles%2C_Prince_of_Wales> rel:ancestorOf <http://dbpedia.org/resource/Prince_William_of_Wales> . }' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql

#curl -X POST --data-binary 'update=prefix foaf: <http://xmlns.com/foaf/0.1/> . INSERT DATA {GRAPH <urn:owl:inference:tests> { <http://dbpedia.org/resource/Prince_William_of_Wales> <http://purl.org/vocab/relationship:siblingOf> <http://dbpedia.org/resource/Prince_Harry_of_Wales> . <http://dbpedia.org/resource/Elizabeth_Bowes-Lyon> <http://purl.org/vocab/relationship/ancestorOf> <http://dbpedia.org/resource/Elizabeth_II_of_the_United_Kingdom> . <http://dbpedia.org/resource/Elizabeth_II_of_the_United_Kingdom> <http://purl.org/vocab/relationship/ancestorOf> <http://dbpedia.org/resource/Charles%2C_Prince_of_Wales> . <http://dbpedia.org/resource/Charles%2C_Prince_of_Wales> <http://purl.org/vocab/relationship/ancestorOf> <http://dbpedia.org/resource/Prince_William_of_Wales> . } }' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql

curl -X POST --data-binary 'update=prefix foaf: <http://xmlns.com/foaf/0.1/> . INSERT DATA {}' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql
