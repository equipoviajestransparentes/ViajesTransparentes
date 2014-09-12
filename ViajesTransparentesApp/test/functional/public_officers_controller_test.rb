require 'test_helper'

class PublicOfficersControllerTest < ActionController::TestCase
  setup do
    @public_officer = public_officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_officer" do
    assert_difference('PublicOfficer.count') do
      post :create, public_officer: @public_officer.attributes
    end

    assert_redirected_to public_officer_path(assigns(:public_officer))
  end

  test "should show public_officer" do
    get :show, id: @public_officer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_officer
    assert_response :success
  end

  test "should update public_officer" do
    put :update, id: @public_officer, public_officer: @public_officer.attributes
    assert_redirected_to public_officer_path(assigns(:public_officer))
  end

  test "should destroy public_officer" do
    assert_difference('PublicOfficer.count', -1) do
      delete :destroy, id: @public_officer
    end

    assert_redirected_to public_officers_path
  end
end
