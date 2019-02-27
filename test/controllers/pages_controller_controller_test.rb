require 'test_helper'

class PagesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get connexion" do
    get pages_controller_connexion_url
    assert_response :success
  end

end
