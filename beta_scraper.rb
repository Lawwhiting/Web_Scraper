require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'csv'

#this is how we request the page we're going to scrape
page = HTTParty.get("https://miami.craigslist.org/search/sof")

parse_page = Nokogiri::HTML(page)

#this is an empty array where we will store all the craigslist jobs

pry.start(binding)
