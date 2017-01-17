require 'test_helper'

class SeanceLaboratoiresControllerTest < ActionController::TestCase
  setup do
    @seance_laboratoire = seance_laboratoires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seance_laboratoires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seance_laboratoire" do
    assert_difference('SeanceLaboratoire.count') do
      post :create, seance_laboratoire: { name: @seance_laboratoire.name, number: @seance_laboratoire.number }
    end

    assert_redirected_to seance_laboratoire_path(assigns(:seance_laboratoire))
  end

  test "should show seance_laboratoire" do
    get :show, id: @seance_laboratoire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seance_laboratoire
    assert_response :success
  end

  test "should update seance_laboratoire" do
    patch :update, id: @seance_laboratoire, seance_laboratoire: { name: @seance_laboratoire.name, number: @seance_laboratoire.number }
    assert_redirected_to seance_laboratoire_path(assigns(:seance_laboratoire))
  end

  test "should destroy seance_laboratoire" do
    assert_difference('SeanceLaboratoire.count', -1) do
      delete :destroy, id: @seance_laboratoire
    end

    assert_redirected_to seance_laboratoires_path
  end
end
