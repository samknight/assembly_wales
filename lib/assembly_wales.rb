require 'open-uri'
require 'nokogiri'

Dir[File.dirname(__FILE__) + '/assembly_wales/*.rb'].each do |file|
  require file
end
