# The legal way (API)

# require "json"
# require "rest-client"
# response = RestClient.get "https://kulturdaten-api-staging.onrender.com/api/attractions"
# parsed_response = JSON.parse(response)

# attractions = parsed_response["data"]["attractions"]

# attractions.each do |attraction|
#   p "---------------------------"
#   p attraction["title"]["de"]
#   p attraction["description"]["de"]
#   p "---------------------------"
# end

# The not so legal way (Scraping)

"https://www.eventim.de/en/city/berlin-1/konzerte-1/?affiliate=TUG&sort=DateAsc&dateFrom=2024-04-25&dateTo=2024-04-28"
# Headers:
# User Agent (Client/Browser)
# Accept language (en, ge)

# "listing-headline-0"

# <img class="listing-image" data-src="https://www.eventim.de/obj/mam/germany/92/46/kinesis-tickets_249367_2248884_222x222.jpg" alt="Kinesis" width="150" height="150" src="https://www.eventim.de/obj/mam/germany/92/46/kinesis-tickets_249367_2248884_222x222.jpg">

require "open-uri"
require "nokogiri"

event_type = "konzerte"
city = "berlin"
url = "https://www.eventim.de/en/city/#{city}-1/#{event_type}-1/?affiliate=TUG&sort=DateAsc&dateFrom=2024-04-25&dateTo=2024-04-28"

headers = {
  'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',
  'Accept-Language' => 'en-US,en;q=0.9',
  'Connection' => 'keep-alive',
  'Referer' => 'https://www.eventim.com/',
  'Host' => 'www.eventim.com'
}

html_file = URI.open(url, headers).read
# puts html_file

html_doc = Nokogiri::HTML.parse(html_file)

html_doc.search("h1").each do |element|
  puts element
end

# url = "https://www.comedycafeberlin.com/"
# headers = {
#   'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',
#   'Accept-Language' => 'en-US,en;q=0.9',
#   'Connection' => 'keep-alive'
# }

# html_file = URI.open(url, headers).read
# # puts html_file
# html_doc = Nokogiri::HTML.parse(html_file)
# # puts html_doc
# html_doc.search("h3").each do |element|
#   puts element.text.strip
# end
