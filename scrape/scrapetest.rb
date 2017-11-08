require 'open-uri'
require 'nokogiri'

url='http://baseball-data.com/player/s/'

charset=nil




html=open(url) do |f|
	charset=f.charset
	f.read
end

#print html


page=Nokogiri::HTML.parse(html,nil,charset)


tag=page.search('th')

data=page.search('td')

puts  tag[0].text













