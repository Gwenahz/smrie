require 'test_helper'

class WebcallbacksControllerTest < ActionController::TestCase
  setup do
    @webcallback = webcallbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webcallbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webcallback" do
    assert_difference('Webcallback.count') do
      post :create, webcallback: { cp: @webcallback.cp, email: @webcallback.email, modele: @webcallback.modele, numtel: @webcallback.numtel, panne: @webcallback.panne, sms: @webcallback.sms }
    end

    assert_redirected_to webcallback_path(assigns(:webcallback))
  end

  test "should show webcallback" do
    get :show, id: @webcallback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webcallback
    assert_response :success
  end

  test "should update webcallback" do
    patch :update, id: @webcallback, webcallback: { cp: @webcallback.cp, email: @webcallback.email, modele: @webcallback.modele, numtel: @webcallback.numtel, panne: @webcallback.panne, sms: @webcallback.sms }
    assert_redirected_to webcallback_path(assigns(:webcallback))
  end

  test "should destroy webcallback" do
    assert_difference('Webcallback.count', -1) do
      delete :destroy, id: @webcallback
    end

    assert_redirected_to webcallbacks_path
  end
end
