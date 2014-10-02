require 'test_helper'

class CiudadanosControllerTest < ActionController::TestCase
  setup do
    @ciudadano = ciudadanos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ciudadanos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ciudadano" do
    assert_difference('Ciudadano.count') do
      post :create, ciudadano: { ap_materno: @ciudadano.ap_materno, ap_paterno: @ciudadano.ap_paterno, id_correo: @ciudadano.id_correo, nombre: @ciudadano.nombre }
    end

    assert_redirected_to ciudadano_path(assigns(:ciudadano))
  end

  test "should show ciudadano" do
    get :show, id: @ciudadano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ciudadano
    assert_response :success
  end

  test "should update ciudadano" do
    patch :update, id: @ciudadano, ciudadano: { ap_materno: @ciudadano.ap_materno, ap_paterno: @ciudadano.ap_paterno, id_correo: @ciudadano.id_correo, nombre: @ciudadano.nombre }
    assert_redirected_to ciudadano_path(assigns(:ciudadano))
  end

  test "should destroy ciudadano" do
    assert_difference('Ciudadano.count', -1) do
      delete :destroy, id: @ciudadano
    end

    assert_redirected_to ciudadanos_path
  end
end
