require 'json'
require 'rest-client'

url = 'https://httpbin.org/post'

response = RestClient::Request.new( # metodo con el objeto y ejecutar el metódo execute 
:method => :post,
:url => url,
:payload => {name: 'Alambrito'}

).execute

#response = RestClient.post url, {name: 'AlanBrito'}
puts response.code