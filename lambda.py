import httplib, urllib
import urllib2

headers = {}
#payload = "update=INSERT DATA { <http://test.com/lambda_subject> <http://test.com/lambda_predicate> <http://test.com/lambda_object> . }"
payload = {"update": "INSERT DATA { <http://test.com/lambda_subject> <http://test.com/lambda_predicate> <http://test.com/lambda_object> . }"}

#r = urllib2.urlopen("http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql")
url = "http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql"
handler = urllib2.HTTPHandler()
opener = urllib2.build_opener(handler)
data = urllib.urlencode(payload)
request = urllib2.Request(url, data =data)
request.get_method = lambda: "POST"
connection = opener.open(request)
data = connection.read()

print data

#conn = httplib.HTTPConnection("http://tnept4.cmxbwv8ic9ig.eu-west-1.neptune.amazonaws.com:8182/sparql")
#conn.request("POST", "", payload, headers)
#response = conn.getresponse()

#print response
