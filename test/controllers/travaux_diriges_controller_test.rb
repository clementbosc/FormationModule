require 'test_helper'

class TravauxDirigesControllerTest < ActionController::TestCase
  setup do
    @travaux_dirige = travaux_diriges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travaux_diriges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travaux_dirige" do
    assert_difference('TravauxDirige.count') do
      post :create, travaux_dirige: { name: @travaux_dirige.name, number: @travaux_dirige.number }
    end

    assert_redirected_to travaux_dirige_path(assigns(:travaux_dirige))
  end

  test "should show travaux_dirige" do
    get :show, id: @travaux_dirige
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travaux_dirige
    assert_response :success
  end

  test "should update travaux_dirige" do
    patch :update, id: @travaux_dirige, travaux_dirige: { name: @travaux_dirige.name, number: @travaux_dirige.number }
    assert_redirected_to travaux_dirige_path(assigns(:travaux_dirige))
  end

  test "should destroy travaux_dirige" do
    assert_difference('TravauxDirige.count', -1) do
      delete :destroy, id: @travaux_dirige
    end

    assert_redirected_to travaux_diriges_path
  end
end
