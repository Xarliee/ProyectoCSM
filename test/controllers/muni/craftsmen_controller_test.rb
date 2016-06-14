require 'test_helper'

class Muni::CraftsmenControllerTest < ActionController::TestCase
  setup do
    @muni_craftsman = muni_craftsmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muni_craftsmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muni_craftsman" do
    assert_difference('Muni::Craftsman.count') do
      post :create, muni_craftsman: {  }
    end

    assert_redirected_to muni_craftsman_path(assigns(:muni_craftsman))
  end

  test "should show muni_craftsman" do
    get :show, id: @muni_craftsman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muni_craftsman
    assert_response :success
  end

  test "should update muni_craftsman" do
    patch :update, id: @muni_craftsman, muni_craftsman: {  }
    assert_redirected_to muni_craftsman_path(assigns(:muni_craftsman))
  end

  test "should destroy muni_craftsman" do
    assert_difference('Muni::Craftsman.count', -1) do
      delete :destroy, id: @muni_craftsman
    end

    assert_redirected_to muni_craftsmen_path
  end
end
