require 'test_helper'

class CheckAssignmentControllerTest < ActionDispatch::IntegrationTest
  test "should get which_class" do
    get check_assignment_which_class_url
    assert_response :success
  end

end
