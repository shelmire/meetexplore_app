require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Meet Explore - Make New Friends!"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Meet Explore - Make New Friends!"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact Us | Meet Explore - Make New Friends!"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "Blog | Meet Explore - Make New Friends!"
  end
end
