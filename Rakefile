require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('zipcode', '0.1.0') do |x|
  x.description              = "Provides a Ruby Zipcode object for working with zipcodes"
  x.url                      = "http://github.com/timmatheson/zipcode"
  x.author                   = "Tim Matheson"
  x.email                    = "me@timmatheson.com"
  x.ignore_pattern           = ["tmp/*","script/*"]
  x.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
