#class MyParser
require 'nokogiri'
require 'open-uri'
require 'date'

f = File.open("books.xml")
@doc = Nokogiri::XML(File.open("books.xml"))
puts @doc.xpath("/coverage[1]/@line-rate")
#timestamp = @doc.xpath("/coverage[1]/@timestamp")

puts DateTime.strptime(@doc.xpath("/coverage[1]/@timestamp").to_s,'%s')
#f.close





#puts @doc



#end