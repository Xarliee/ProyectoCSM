require 'test_helper'

class Muni::PagesControllerTest < ActionController::TestCase
  setup do
    @muni_page = muni_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muni_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muni_page" do
    assert_difference('Muni::Page.count') do
      post :create, muni_page: {  }
    end

    assert_redirected_to muni_page_path(assigns(:muni_page))
  end

  test "should show muni_page" do
    get :show, id: @muni_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muni_page
    assert_response :success
  end

  test "should update muni_page" do
    patch :update, id: @muni_page, muni_page: {  }
    assert_redirected_to muni_page_path(assigns(:muni_page))
  end

  test "should destroy muni_page" do
    assert_difference('Muni::Page.count', -1) do
      delete :destroy, id: @muni_page
    end

    assert_redirected_to muni_pages_path
  end
end
