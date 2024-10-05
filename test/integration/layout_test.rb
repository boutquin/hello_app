# test/integration/layout_test.rb

require "test_helper"

##
# Test class for layout structure.
class LayoutTest < ActionDispatch::IntegrationTest
  ##
  # Test the layout structure.
  #
  # @return [void]
  def test_layout_structure
    get root_url
    assert_response :success
    assert_select "title", "Hello App"
    assert_select "link[rel=icon]", 2
    assert_select "link[rel=apple-touch-icon]"
    assert_select "header button#theme-toggle"
    assert_select "main"
  end
end
