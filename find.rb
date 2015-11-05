#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'


# Ensure service tag is provided
if ARGV.length == 0
  puts "\nService tag not provided. Call script as `ruby find.rb <service_tag1> <service_tag2> <servicetag3> ...`\n"
  exit!
end


ARGV.each do |servicetag|

  url = "http://www.dell.com/support/home/ca/en/cabsdt1/product-support/servicetag/#{servicetag}/configuration"
  doc = Nokogiri::HTML(open(url))
  details = doc.xpath("//div[@id='subSectionB']").xpath("//span[@class='show-collapsed']")

  puts "\nService Tag : #{servicetag}"
  puts "Searching... #{url}\n\n"

  if details.length == 0
    puts "\tError: Service tag not found..."
  else
    details.each do |detail|
      puts "\t- #{detail.text.split(':')[1].strip}" rescue nil
    end
  end

end

puts ''

