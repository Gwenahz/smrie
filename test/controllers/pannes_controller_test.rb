require 'test_helper'

class PannesControllerTest < ActionController::TestCase
  setup do
    @panne = pannes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pannes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panne" do
    assert_difference('Panne.count') do
      post :create, panne: { name: @panne.name }
    end

    assert_redirected_to panne_path(assigns(:panne))
  end

  test "should show panne" do
    get :show, id: @panne
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panne
    assert_response :success
  end

  test "should update panne" do
    patch :update, id: @panne, panne: { name: @panne.name }
    assert_redirected_to panne_path(assigns(:panne))
  end

  test "should destroy panne" do
    assert_difference('Panne.count', -1) do
      delete :destroy, id: @panne
    end

    assert_redirected_to pannes_path
  end
end
