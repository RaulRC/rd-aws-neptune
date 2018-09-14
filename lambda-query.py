import httplib, urllib
import urllib2

headers = {}
payload = {"query": "select ?s ?p ?o where {?s ?p ?o} limit 10000"}


url = "http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql"
handler = urllib2.HTTPHandler()
opener = urllib2.build_opener(handler)
data = urllib.urlencode(payload)
request = urllib2.Request(url, data =data)
request.get_method = lambda: "POST"
connection = opener.open(request)
data = connection.read()

print data
