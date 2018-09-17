#curl -X POST --data-binary 'query=select ?s ?p ?o where {?s ?p ?o} limit 10' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql
curl -X POST --data-binary 'query=select ?s ?o where { ?s  <http://purl.org/vocab/relationship/ancestorOf> ?o} limit 10' http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql
