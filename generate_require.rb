require 'json'
require 'rest-client'

url = 'https://pokeapi.co/api/v2/pokemon/3'

#response = RestClient.get url    #hacemos peticion mediante metodo get de la gema rest-client, se pasa como primer argumento la direccion a la cual queremos hacer la peticion 

#response = RestClient::Request.new(          #por esté metodo nos apoyamos en un objeto y ejectumaos su metodo execute 
#:method => :get, 
#:url => url
#).execute 

#response = RestClient::Request.execute(method: :get, url: url)    # método directo con el metodo execute

RestClient.get(url) {|response, request, result| #método usando un bloque, se hace uso de 3 objetos respuesta, peticion y resultado
if response.code == 200 #se utiliza el tributo code para conocer el codigo de respuesta que manda el servidor, si es 200 la peticion se realizo de manera exitosa 
    result = JSON.parse response.to_str # la respuesta es parcializada a un objeto JSON
    name = result['forms'][0]['name'] #
    puts "El nombre del pokemon es: #{name}"
end 
}

#result = JSON.parse response.to_str # la respuesta es parcializada a un objeto JSON
#name = result['forms'][0]['name'] #
#puts "El nombre del pokemon es: #{name}"