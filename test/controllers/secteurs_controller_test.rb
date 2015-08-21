require 'test_helper'

class SecteursControllerTest < ActionController::TestCase
  setup do
    @secteur = secteurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secteurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secteur" do
    assert_difference('Secteur.count') do
      post :create, secteur: { user_id: @secteur.user_id, ville: @secteur.ville }
    end

    assert_redirected_to secteur_path(assigns(:secteur))
  end

  test "should show secteur" do
    get :show, id: @secteur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secteur
    assert_response :success
  end

  test "should update secteur" do
    patch :update, id: @secteur, secteur: { user_id: @secteur.user_id, ville: @secteur.ville }
    assert_redirected_to secteur_path(assigns(:secteur))
  end

  test "should destroy secteur" do
    assert_difference('Secteur.count', -1) do
      delete :destroy, id: @secteur
    end

    assert_redirected_to secteurs_path
  end
end
