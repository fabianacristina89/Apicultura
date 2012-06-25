require 'test_helper'

class ColmeiasControllerTest < ActionController::TestCase
  setup do
    @colmeia = colmeias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colmeias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colmeia" do
    assert_difference('Colmeia.count') do
      post :create, colmeia: { nome: @colmeia.nome }
    end

    assert_redirected_to colmeia_path(assigns(:colmeia))
  end

  test "should show colmeia" do
    get :show, id: @colmeia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colmeia
    assert_response :success
  end

  test "should update colmeia" do
    put :update, id: @colmeia, colmeia: { nome: @colmeia.nome }
    assert_redirected_to colmeia_path(assigns(:colmeia))
  end

  test "should destroy colmeia" do
    assert_difference('Colmeia.count', -1) do
      delete :destroy, id: @colmeia
    end

    assert_redirected_to colmeias_path
  end
end
