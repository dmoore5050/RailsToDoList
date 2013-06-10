require 'test_helper'

class BrowseAllListsAndTasks < ActionDispatch::IntegrationTest
  include DatabaseCleaner

  test 'view a list of lists' do
    List.create!(title: 'Kitchen tasks')
    List.create!(title: 'Yard work')

    assert_equal 2, List.count

    visit '/lists'
    assert_include page.body, 'Kitchen tasks'
    assert_include page.body, 'Yard work'
  end
end
