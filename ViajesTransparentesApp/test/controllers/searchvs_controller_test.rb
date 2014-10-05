require 'test_helper'

class SearchvsControllerTest < ActionController::TestCase
  setup do
    @searchv = searchvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searchvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create searchv" do
    assert_difference('Searchv.count') do
      post :create, searchv: { fin_fecha_rango: @searchv.fin_fecha_rango, inicio_fecha_rango: @searchv.inicio_fecha_rango, rango_max_gasto: @searchv.rango_max_gasto, rango_min_gasto: @searchv.rango_min_gasto }
    end

    assert_redirected_to searchv_path(assigns(:searchv))
  end

  test "should show searchv" do
    get :show, id: @searchv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @searchv
    assert_response :success
  end

  test "should update searchv" do
    patch :update, id: @searchv, searchv: { fin_fecha_rango: @searchv.fin_fecha_rango, inicio_fecha_rango: @searchv.inicio_fecha_rango, rango_max_gasto: @searchv.rango_max_gasto, rango_min_gasto: @searchv.rango_min_gasto }
    assert_redirected_to searchv_path(assigns(:searchv))
  end

  test "should destroy searchv" do
    assert_difference('Searchv.count', -1) do
      delete :destroy, id: @searchv
    end

    assert_redirected_to searchvs_path
  end
end
