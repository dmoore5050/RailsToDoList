require 'test_helper'

class UserCanCreateTaskTest < ActionDispatch::IntegrationTest
  test 'creating a new task' do
    visit '/'
    click_link 'Create Task'
    fill_in 'Title', with: 'Mop the porch'
    click_button 'Add Task'
    assert_include page.body, 'Your task has now been listed!'
    visit '/tasks'
    assert_include page.body, 'Mop the porch'
  end
end