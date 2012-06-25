require 'test_helper'

class ColmeiaControllerTest < ActionController::TestCase
  setup do
    @colmeium = colmeia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colmeia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colmeium" do
    assert_difference('Colmeia.count') do
      post :create, colmeium: { nome: @colmeium.nome }
    end

    assert_redirected_to colmeium_path(assigns(:colmeium))
  end

  test "should show colmeium" do
    get :show, id: @colmeium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colmeium
    assert_response :success
  end

  test "should update colmeium" do
    put :update, id: @colmeium, colmeium: { nome: @colmeium.nome }
    assert_redirected_to colmeium_path(assigns(:colmeium))
  end

  test "should destroy colmeium" do
    assert_difference('Colmeia.count', -1) do
      delete :destroy, id: @colmeium
    end

    assert_redirected_to colmeia_index_path
  end
end
