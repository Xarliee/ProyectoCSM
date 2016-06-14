require 'test_helper'

class Muni::ProductsControllerTest < ActionController::TestCase
  setup do
    @muni_product = muni_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muni_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muni_product" do
    assert_difference('Muni::Product.count') do
      post :create, muni_product: {  }
    end

    assert_redirected_to muni_product_path(assigns(:muni_product))
  end

  test "should show muni_product" do
    get :show, id: @muni_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muni_product
    assert_response :success
  end

  test "should update muni_product" do
    patch :update, id: @muni_product, muni_product: {  }
    assert_redirected_to muni_product_path(assigns(:muni_product))
  end

  test "should destroy muni_product" do
    assert_difference('Muni::Product.count', -1) do
      delete :destroy, id: @muni_product
    end

    assert_redirected_to muni_products_path
  end
end
