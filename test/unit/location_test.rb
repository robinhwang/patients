require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "should not save without name" do
    @location = Location.new
    assert @location.invalid?
    assert @location.errors.messages.any?
  end
end
