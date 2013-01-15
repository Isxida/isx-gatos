require 'test_helper'

class GatosControllerTest < ActionController::TestCase
  setup do
    @gato = gatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gato" do
    assert_difference('Gato.count') do
      post :create, gato: @gato.attributes
    end

    assert_redirected_to gato_path(assigns(:gato))
  end

  test "should show gato" do
    get :show, id: @gato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gato
    assert_response :success
  end

  test "should update gato" do
    put :update, id: @gato, gato: @gato.attributes
    assert_redirected_to gato_path(assigns(:gato))
  end

  test "should destroy gato" do
    assert_difference('Gato.count', -1) do
      delete :destroy, id: @gato
    end

    assert_redirected_to gatos_path
  end
end
