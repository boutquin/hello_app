# test/routes_test.rb

require "test_helper"

##
# Test class for routes.
class RoutesTest < ActionDispatch::IntegrationTest
  ##
  # Test the root route.
  #
  # @return [void]
  def test_root_route
    assert_generates "/", controller: "pages", action: "home"
  end

  ##
  # Test the health check route.
  #
  # @return [void]
  def test_health_check_route
    assert_generates "/up", controller: "rails/health", action: "show"
  end
end
