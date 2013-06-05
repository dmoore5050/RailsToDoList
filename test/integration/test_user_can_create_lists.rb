require 'test_helper'

class UserCanCreateLists < ActionDispatch::IntegrationTest

  test 'view a list of tasks' do
    Post.create!(title: "Errand List", body: "Incomplete Tasks:")
    Post.create!(title: "Around the House", body: "Incomplete Tasks:")

    visit '/'
    click_link "View All Lists"
    assert_current_path '/lists'
    # assume we have a page variable
    assert_include page.content, "Errand List"
    #=> assert page.content.include? "First Post!!"
    assert_include page.content, "Around the House"
  end

end