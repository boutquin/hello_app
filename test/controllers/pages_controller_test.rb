# test/controllers/pages_controller_test.rb

require "test_helper"

##
# Test class for PagesController.
class PagesControllerTest < ActionDispatch::IntegrationTest
  ##
  # Test the home action.
  #
  # @return [void]
  def test_home
    get root_url
    assert_response :success
    assert_select "h1", "Hello, World!"
    assert_select "p", "Welcome to your first Rails app using Flowbite and Tailwind CSS."
  end
end
