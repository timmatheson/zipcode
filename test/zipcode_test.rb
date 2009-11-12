require 'test_helper'

class ZipcodeTest < Test::Unit::TestCase
  def test_numeric_zipcode_value
    assert_equal("92688", zip(92688).code)
  end
  
  def test_zipcode_code_with_plus_four
    assert_equal("92688",zip("92688-1001").code)
  end
  
  def test_zipcode_plus_four_with_plus_four
    assert_equal("1001",zip("10011-1001").plus_four)
  end
  
  def test_zipcode_code_without_plus_four
    assert_equal("XCRMNT",zip("XCR MNT").code) 
  end
  
  def test_zipcode_plus_four_without_plus_four
    assert_nil zip("KGV RDE").plus_four
  end
  
  private
  
  def zip(code)
    Zipcode.new(code)
  end
end