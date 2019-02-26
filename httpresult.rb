require 'http'

response = HTTP.get("http://localhost:3000/api/contactlist")
p response.parse['contact']
