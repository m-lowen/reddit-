require 'rest-client'
require 'json'


offset = 0
# greet the user
puts "hello, welcome to this app called reddit posts."

puts "what kind of story? ('top' or 'hot')"

 feed = gets.strip

# puts "Showing petitions of status: #{status}..."

# get the petitions 

puts "loading stories..."

	response = RestClient.get "http://www.reddit.com/#{feed}.json"

	parsed_response = JSON.parse(response)

	posts  = parsed_response["data"]

	posts = posts["children"]

	#posts = posts[0]

	#posts = posts["data"]

	#title = posts["title"]

	#puts title 

	posts.each_with_index do |post, index|
		puts " #{index+1}. #{post["data"]["title"]}"
	end 

	