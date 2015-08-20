require 'test_helper'

class DisponibilitesControllerTest < ActionController::TestCase
  setup do
    @disponibilite = disponibilites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disponibilites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disponibilite" do
    assert_difference('Disponibilite.count') do
      post :create, disponibilite: { amdimanche: @disponibilite.amdimanche, amjeudi: @disponibilite.amjeudi, amlundi: @disponibilite.amlundi, ammardi: @disponibilite.ammardi, ammercredi: @disponibilite.ammercredi, amsamedi: @disponibilite.amsamedi, amvendredi: @disponibilite.amvendredi, pmdimanche: @disponibilite.pmdimanche, pmjeudi: @disponibilite.pmjeudi, pmlundi: @disponibilite.pmlundi, pmmardi: @disponibilite.pmmardi, pmmercredi: @disponibilite.pmmercredi, pmsamedi: @disponibilite.pmsamedi, pmvendredi: @disponibilite.pmvendredi, sdimanche: @disponibilite.sdimanche, sjeudi: @disponibilite.sjeudi, slundi: @disponibilite.slundi, smardi: @disponibilite.smardi, smercredi: @disponibilite.smercredi, ssamedi: @disponibilite.ssamedi, svendredi: @disponibilite.svendredi }
    end

    assert_redirected_to disponibilite_path(assigns(:disponibilite))
  end

  test "should show disponibilite" do
    get :show, id: @disponibilite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disponibilite
    assert_response :success
  end

  test "should update disponibilite" do
    patch :update, id: @disponibilite, disponibilite: { amdimanche: @disponibilite.amdimanche, amjeudi: @disponibilite.amjeudi, amlundi: @disponibilite.amlundi, ammardi: @disponibilite.ammardi, ammercredi: @disponibilite.ammercredi, amsamedi: @disponibilite.amsamedi, amvendredi: @disponibilite.amvendredi, pmdimanche: @disponibilite.pmdimanche, pmjeudi: @disponibilite.pmjeudi, pmlundi: @disponibilite.pmlundi, pmmardi: @disponibilite.pmmardi, pmmercredi: @disponibilite.pmmercredi, pmsamedi: @disponibilite.pmsamedi, pmvendredi: @disponibilite.pmvendredi, sdimanche: @disponibilite.sdimanche, sjeudi: @disponibilite.sjeudi, slundi: @disponibilite.slundi, smardi: @disponibilite.smardi, smercredi: @disponibilite.smercredi, ssamedi: @disponibilite.ssamedi, svendredi: @disponibilite.svendredi }
    assert_redirected_to disponibilite_path(assigns(:disponibilite))
  end

  test "should destroy disponibilite" do
    assert_difference('Disponibilite.count', -1) do
      delete :destroy, id: @disponibilite
    end

    assert_redirected_to disponibilites_path
  end
end
