# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get root_path
    
    assert_response :success
    assert_select 'title', 'Magellan Rewards'
    assert_select 'h1', 'Magellan Rewards'
  end
end
