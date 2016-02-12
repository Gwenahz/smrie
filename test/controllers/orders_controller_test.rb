require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { adresse2: @order.adresse2, adresse: @order.adresse, bureau: @order.bureau, code_reparation: @order.code_reparation, commentaire: @order.commentaire, couleur: @order.couleur, cp: @order.cp, date_reparation: @order.date_reparation, demande_id: @order.demande_id, email: @order.email, entreprise: @order.entreprise, heure_reparation: @order.heure_reparation, marque: @order.marque, modele: @order.modele, nom: @order.nom, numtel: @order.numtel, panne: @order.panne, paye: @order.paye, prenom: @order.prenom, prix: @order.prix, reparateur: @order.reparateur, statut: @order.statut, ville: @order.ville }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { adresse2: @order.adresse2, adresse: @order.adresse, bureau: @order.bureau, code_reparation: @order.code_reparation, commentaire: @order.commentaire, couleur: @order.couleur, cp: @order.cp, date_reparation: @order.date_reparation, demande_id: @order.demande_id, email: @order.email, entreprise: @order.entreprise, heure_reparation: @order.heure_reparation, marque: @order.marque, modele: @order.modele, nom: @order.nom, numtel: @order.numtel, panne: @order.panne, paye: @order.paye, prenom: @order.prenom, prix: @order.prix, reparateur: @order.reparateur, statut: @order.statut, ville: @order.ville }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
