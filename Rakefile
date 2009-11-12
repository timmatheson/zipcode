require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('zipcode', '0.1.0') do |p|
  p.description              = "Creates a Zipcode object class used for validating zipcodes."
  p.url                      = ""
  p.author                   = "Tim Matheson"
  p.email                    = "me@timmatheson.com"
  p.ignore_pattern           = ["tmp/*","script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
