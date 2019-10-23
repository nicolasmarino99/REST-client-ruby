#frozen_string_literal: true
require 'rest-client'

p "What do you want to search?"
query = gets.chomp
response = RestClient.get "https://www.bing.com/search", params: { q: query}

puts "This is the status of the request: #{response.code}"
puts "This is the cookies of our application: #{response.cookies}"
puts "This is the headers of our application: #{response.headers}"
puts "This is the body of our application: #{response.body}"