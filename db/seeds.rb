require "net/http"
require "uri"
require "json"
require 'csv'
DOC = 'file.csv'
uri = URI.parse("http://api.nytimes.com/svc/archive/v1/2017/4.json?api-key=0591740beb04400887ae52ed3bf76f64")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)
response = http.request(request)
response.code             # => 301
check = JSON.parse(response.body)
check["response"]["docs"].each do |data|
  Article.create(web_url: data["web_url"], lead_paragraph: data["lead_paragraph"], headline: data["headline"]["main"], pub_date: data["pub_date"], word_count:data["word_count"] )
end

ReadingList.create(title:"hello World", articles: [1,2,3,4,5])