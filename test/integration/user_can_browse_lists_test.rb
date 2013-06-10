require 'test_helper'

class UserCanBrowseTasksTest < ActionDispatch::IntegrationTest
  include DatabaseCleaner

  test 'view a list of tasks' do
    list = List.create(title: 'Kitchen tasks')
    list.tasks.create!(name: "Sweep Kitchen")
    list.tasks.create!(name: "Clean Fridge")

    assert_equal 2, Task.count
    visit "/lists/#{list.id}/tasks"
    assert_include page.body, "Task List"
    assert_include page.body, "Sweep Kitchen"
    assert_include page.body, "Clean Fridge"
  end

end