require 'test_helper'

class ScreenpicsControllerTest < ActionController::TestCase
  setup do
    @screenpic = screenpics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screenpics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screenpic" do
    assert_difference('Screenpic.count') do
      post :create, screenpic: @screenpic.attributes
    end

    assert_redirected_to screenpic_path(assigns(:screenpic))
  end

  test "should show screenpic" do
    get :show, id: @screenpic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screenpic.to_param
    assert_response :success
  end

  test "should update screenpic" do
    put :update, id: @screenpic.to_param, screenpic: @screenpic.attributes
    assert_redirected_to screenpic_path(assigns(:screenpic))
  end

  test "should destroy screenpic" do
    assert_difference('Screenpic.count', -1) do
      delete :destroy, id: @screenpic.to_param
    end

    assert_redirected_to screenpics_path
  end
end
