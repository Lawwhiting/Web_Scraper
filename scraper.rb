require 'httparty'
require 'nokogiri'


def find_job

jobs = []
url = []
page = HTTParty.get('https://miami.craigslist.org/search/sof')

parse_page = Nokogiri::HTML(page)
parse_page.css('.hdrlnk').each do |item|
# p item.content
 jobs << item.content
 url << item.attribute("href")

  end
  arry = []
jobs.each_with_index do |job,idx|
 arry << "#{idx} #{job} #{url[idx]}  <br>"
  end
  return arry
end
