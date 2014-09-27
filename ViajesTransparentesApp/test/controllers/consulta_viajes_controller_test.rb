require 'test_helper'

class ConsultaViajesControllerTest < ActionController::TestCase
  setup do
    @consulta_viaje = consulta_viajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consulta_viajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consulta_viaje" do
    assert_difference('ConsultaViaje.count') do
      post :create, consulta_viaje: { fecha_fin: @consulta_viaje.fecha_fin, fecha_inicio: @consulta_viaje.fecha_inicio, max_precio: @consulta_viaje.max_precio, min_precio: @consulta_viaje.min_precio, public_officer_id: @consulta_viaje.public_officer_id }
    end

    assert_redirected_to consulta_viaje_path(assigns(:consulta_viaje))
  end

  test "should show consulta_viaje" do
    get :show, id: @consulta_viaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consulta_viaje
    assert_response :success
  end

  test "should update consulta_viaje" do
    patch :update, id: @consulta_viaje, consulta_viaje: { fecha_fin: @consulta_viaje.fecha_fin, fecha_inicio: @consulta_viaje.fecha_inicio, max_precio: @consulta_viaje.max_precio, min_precio: @consulta_viaje.min_precio, public_officer_id: @consulta_viaje.public_officer_id }
    assert_redirected_to consulta_viaje_path(assigns(:consulta_viaje))
  end

  test "should destroy consulta_viaje" do
    assert_difference('ConsultaViaje.count', -1) do
      delete :destroy, id: @consulta_viaje
    end

    assert_redirected_to consulta_viajes_path
  end
end
