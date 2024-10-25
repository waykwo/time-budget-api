require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/tasks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Task.count, data.length
  end
end
