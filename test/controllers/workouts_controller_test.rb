require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workouts_index_url
    assert_response :success
  end
end
