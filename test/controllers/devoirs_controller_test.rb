require 'test_helper'

class DevoirsControllerTest < ActionController::TestCase
  setup do
    @devoir = devoirs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devoirs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devoir" do
    assert_difference('Devoir.count') do
      post :create, devoir: { name: @devoir.name }
    end

    assert_redirected_to devoir_path(assigns(:devoir))
  end

  test "should show devoir" do
    get :show, id: @devoir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devoir
    assert_response :success
  end

  test "should update devoir" do
    patch :update, id: @devoir, devoir: { name: @devoir.name }
    assert_redirected_to devoir_path(assigns(:devoir))
  end

  test "should destroy devoir" do
    assert_difference('Devoir.count', -1) do
      delete :destroy, id: @devoir
    end

    assert_redirected_to devoirs_path
  end
end
