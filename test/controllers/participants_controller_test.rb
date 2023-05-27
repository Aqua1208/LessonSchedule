require "test_helper"

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:references" do
    get participants_user_id:references_url
    assert_response :success
  end

  test "should get lesson_id:references" do
    get participants_lesson_id:references_url
    assert_response :success
  end
end
