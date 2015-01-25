#class MyParser
require 'nokogiri'
require 'open-uri'
require 'date'
  #doc = Nokogiri::XML(open("https://ci.podio.io/job/api/18223/artifact/coverage.xml"))
f = File.open("coverage.xml")
@doc = Nokogiri::XML(File.open("coverage.xml"))
puts @doc.xpath("/coverage[1]/@line-rate")
#timestamp = @doc.xpath("/coverage[1]/@timestamp")

puts DateTime.strptime(@doc.xpath("/coverage[1]/@timestamp").to_s,'%s')
#f.close





#puts @doc



#end