library("RCurl")
library("rjson")

# Accept SSL certificates issued by public Certificate Authorities
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))

h = basicTextGatherer()
hdr = basicHeaderGatherer()


req = list(
  
  Inputs = list(
    
    
    "input1" = list(
      "ColumnNames" = list("x"),
      "Values" = list( list( "100" ),  list( "406" )  )
    )                ),
  GlobalParameters = setNames(fromJSON('{}'), character(0))
)

body = enc2utf8(toJSON(req))
api_key = "" # Replace this with the API key for the web service
authz_hdr = paste('Bearer', api_key, sep=' ')

h$reset()
curlPerform(url = "", # Replace with AML web service url
            httpheader=c('Content-Type' = "application/json", 'Authorization' = authz_hdr),
            postfields=body,
            writefunction = h$update,
            headerfunction = hdr$update,
            verbose = TRUE
)

headers = hdr$value()
httpStatus = headers["status"]
if (httpStatus >= 400)
{
  print(paste("The request failed with status code:", httpStatus, sep=" "))
  
  # Print the headers - they include the requert ID and the timestamp, which are useful for debugging the failure
  print(headers)
}

print("Result:")
result = h$value()
print(fromJSON(result))


