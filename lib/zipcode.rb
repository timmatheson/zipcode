# Simple Ruby Class for handling zipcodes when shipping
# Example
# zipcode = Zipcode.new("92688-1111")
# zipcode.code => 92688
# zipcode.plus_four => 1111
require 'rubygems'
require 'active_support'

class Zipcode < Object
  attr_reader :code, :plus_four
  
  def initialize(zipcode)
    format_zipcode(zipcode)
  end
  
  private
  
  def format_zipcode(zipcode)
    @code = sanitize_zipcode(zipcode)
    if zipcode =~ /^\d{5}(\-?)(\d{4})?$/
      @plus_four = @code.slice(5,4).blank? ? nil : @code.slice(5,4)
      @code      = @code.first(5)
    else
      @plus_four = nil
    end
  end
  
  # Removes anything other than Alpha-Numerics
  def sanitize_zipcode(zipcode)
    zipcode.gsub(/([^0-9A-Za-z]| \-)/,'')
  end
end