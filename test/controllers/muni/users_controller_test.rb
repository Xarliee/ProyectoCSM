require 'test_helper'

class Muni::UsersControllerTest < ActionController::TestCase
  setup do
    @muni_user = muni_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muni_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muni_user" do
    assert_difference('Muni::User.count') do
      post :create, muni_user: {  }
    end

    assert_redirected_to muni_user_path(assigns(:muni_user))
  end

  test "should show muni_user" do
    get :show, id: @muni_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muni_user
    assert_response :success
  end

  test "should update muni_user" do
    patch :update, id: @muni_user, muni_user: {  }
    assert_redirected_to muni_user_path(assigns(:muni_user))
  end

  test "should destroy muni_user" do
    assert_difference('Muni::User.count', -1) do
      delete :destroy, id: @muni_user
    end

    assert_redirected_to muni_users_path
  end
end
