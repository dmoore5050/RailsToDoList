require 'test_helper'

class AddNewList < ActionDispatch::IntegrationTest
  include DatabaseCleaner

  test "add a new list" do
    visit '/'
    fill_in 'Title', with: 'My new list'
    click_button 'Add List'
    assert_include page.body, 'Your list has now been listed!'
    assert_include page.body, 'My new list'

  end
end
