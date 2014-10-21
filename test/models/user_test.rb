require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @larry   = users(:larry)
    @donovan = users(:donovan)
  end

  test 'first name' do
    assert_equal 'Laughing', @larry.first_name
  end

  test 'middle name' do
    assert_equal 'Charles', @donovan.middle_name
  end

  test 'middle initial' do
    assert_equal 'C.', @donovan.middle_initial
  end

  test 'last name' do
    assert_equal 'Larry', @larry.last_name
  end

  test 'full name' do
    assert_equal 'Laughing Larry', @larry.full_name
    assert_equal 'Donovan C. Young', @donovan.full_name
  end

  test 'familiar name' do
    assert_equal 'Mascot', @larry.familiar_name
    assert_equal 'Donovan', @donovan.familiar_name
  end
end
