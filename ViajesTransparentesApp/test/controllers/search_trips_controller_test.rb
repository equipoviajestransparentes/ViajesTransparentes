require 'test_helper'

class SearchTripsControllerTest < ActionController::TestCase
  setup do
    @search_trip = search_trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:search_trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search_trip" do
    assert_difference('SearchTrip.count') do
      post :create, search_trip: { fin_fecha_rango: @search_trip.fin_fecha_rango, inicio_fecha_rango: @search_trip.inicio_fecha_rango, rango_max_gasto: @search_trip.rango_max_gasto, rango_min_gasto: @search_trip.rango_min_gasto }
    end

    assert_redirected_to search_trip_path(assigns(:search_trip))
  end

  test "should show search_trip" do
    get :show, id: @search_trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search_trip
    assert_response :success
  end

  test "should update search_trip" do
    patch :update, id: @search_trip, search_trip: { fin_fecha_rango: @search_trip.fin_fecha_rango, inicio_fecha_rango: @search_trip.inicio_fecha_rango, rango_max_gasto: @search_trip.rango_max_gasto, rango_min_gasto: @search_trip.rango_min_gasto }
    assert_redirected_to search_trip_path(assigns(:search_trip))
  end

  test "should destroy search_trip" do
    assert_difference('SearchTrip.count', -1) do
      delete :destroy, id: @search_trip
    end

    assert_redirected_to search_trips_path
  end
end
