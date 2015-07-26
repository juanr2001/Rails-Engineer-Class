require 'net::http'
require 'open-uri'
require 'json'

base_uri = "http://www.yahoo.com"

response_b = OpenURI.open_uri("#{base_uri}/I.json").read
parsed = JSON.parse(response_b)
lesson_response = OpenURI.open_uri("#{base_uri}/I/#{parsed[1]["id"]}.json").read
parsed_lesson   = JSON.parse(lesson_response)

