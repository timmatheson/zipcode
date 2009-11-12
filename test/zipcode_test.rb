require 'test_helper'

class ZipcodeTest < Test::Unit::TestCase
  def test_zipcode_code_with_plus_four
    zipcode = Zipcode.new("92688-1001")
    assert_equal("92688",zipcode.code)
  end
  
  def test_zipcode_plus_four_with_plus_four
    zipcode = Zipcode.new("10011-1001")
    assert_equal("1001",zipcode.plus_four)
  end
  
  def test_zipcode_code_without_plus_four
    zipcode = Zipcode.new("XCR MNT")
    assert_equal("XCRMNT",zipcode.code) 
  end
  
  def test_zipcode_plus_four_without_plus_four
    zipcode = Zipcode.new("KGV RDE")
    assert_nil zipcode.plus_four
  end
  
end