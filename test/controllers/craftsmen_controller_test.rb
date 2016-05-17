require 'test_helper'

class CraftsmenControllerTest < ActionController::TestCase
  setup do
    @craftsman = craftsmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:craftsmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create craftsman" do
    assert_difference('Craftsman.count') do
      post :create, craftsman: { age: @craftsman.age, bio: @craftsman.bio, category: @craftsman.category, comuna: @craftsman.comuna, email: @craftsman.email, name: @craftsman.name, phone: @craftsman.phone, region: @craftsman.region, user_id: @craftsman.user_id }
    end

    assert_redirected_to craftsman_path(assigns(:craftsman))
  end

  test "should show craftsman" do
    get :show, id: @craftsman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @craftsman
    assert_response :success
  end

  test "should update craftsman" do
    patch :update, id: @craftsman, craftsman: { age: @craftsman.age, bio: @craftsman.bio, category: @craftsman.category, comuna: @craftsman.comuna, email: @craftsman.email, name: @craftsman.name, phone: @craftsman.phone, region: @craftsman.region, user_id: @craftsman.user_id }
    assert_redirected_to craftsman_path(assigns(:craftsman))
  end

  test "should destroy craftsman" do
    assert_difference('Craftsman.count', -1) do
      delete :destroy, id: @craftsman
    end

    assert_redirected_to craftsmen_path
  end
end
