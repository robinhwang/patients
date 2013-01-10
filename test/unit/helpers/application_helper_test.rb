require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "should behave right" do
    id = 5
    assert_equal(medical_record(id), "MR000005")
  end
end