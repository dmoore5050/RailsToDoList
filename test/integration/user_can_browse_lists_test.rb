require 'test_helper'

class UserCanBrowseTasksTest < ActionDispatch::IntegrationTest

  test 'view a list of tasks' do
    Task.create!(title: "Sweep Kitchen")
    Task.create!(title: "Clean Fridge")

    assert_equal 2, Task.count
    visit '/tasks'
    assert_include page.body, "Task List"
    assert_include page.body, "Sweep Kitchen"
    assert_include page.body, "Clean Fridge"
  end

end