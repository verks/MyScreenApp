require 'test_helper'

class ScreenPicsControllerTest < ActionController::TestCase
  setup do
    @screen_pic = screen_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screen_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screen_pic" do
    assert_difference('ScreenPic.count') do
      post :create, screen_pic: @screen_pic.attributes
    end

    assert_redirected_to screen_pic_path(assigns(:screen_pic))
  end

  test "should show screen_pic" do
    get :show, id: @screen_pic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screen_pic.to_param
    assert_response :success
  end

  test "should update screen_pic" do
    put :update, id: @screen_pic.to_param, screen_pic: @screen_pic.attributes
    assert_redirected_to screen_pic_path(assigns(:screen_pic))
  end

  test "should destroy screen_pic" do
    assert_difference('ScreenPic.count', -1) do
      delete :destroy, id: @screen_pic.to_param
    end

    assert_redirected_to screen_pics_path
  end
end
