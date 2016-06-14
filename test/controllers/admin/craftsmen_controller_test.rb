require 'test_helper'

class Admin::CraftsmenControllerTest < ActionController::TestCase
  setup do
    @admin_craftsman = admin_craftsmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_craftsmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_craftsman" do
    assert_difference('Admin::Craftsman.count') do
      post :create, admin_craftsman: {  }
    end

    assert_redirected_to admin_craftsman_path(assigns(:admin_craftsman))
  end

  test "should show admin_craftsman" do
    get :show, id: @admin_craftsman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_craftsman
    assert_response :success
  end

  test "should update admin_craftsman" do
    patch :update, id: @admin_craftsman, admin_craftsman: {  }
    assert_redirected_to admin_craftsman_path(assigns(:admin_craftsman))
  end

  test "should destroy admin_craftsman" do
    assert_difference('Admin::Craftsman.count', -1) do
      delete :destroy, id: @admin_craftsman
    end

    assert_redirected_to admin_craftsmen_path
  end
end
