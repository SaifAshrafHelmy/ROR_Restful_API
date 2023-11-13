require "uri"
require "net/http"

url = URI("http://localhost:3000/api/v1/articles")

http = Net::HTTP.new(url.host, url.port);
request = Net::HTTP::Get.new(url)

response = http.request(request)
puts response.read_body
