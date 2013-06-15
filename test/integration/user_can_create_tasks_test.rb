require 'test_helper'

class UserCanCreateTaskTest < ActionDispatch::IntegrationTest

  test 'creating a new task' do
    visit '/'
    fill_in 'Title', with: 'Spring cleaning'
    click_button 'Add List'
    fill_in 'Name', with: 'Mop the porch'
    click_button 'Add Task'
    assert_include page.body, 'Your task has now been listed!'
    assert_include page.body, 'Mop the porch'
  end
end