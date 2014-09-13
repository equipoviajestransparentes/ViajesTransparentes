require 'test_helper'

class CommissionOfficersControllerTest < ActionController::TestCase
  setup do
    @commission_officer = commission_officers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commission_officers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commission_officer" do
    assert_difference('CommissionOfficer.count') do
      post :create, commission_officer: @commission_officer.attributes
    end

    assert_redirected_to commission_officer_path(assigns(:commission_officer))
  end

  test "should show commission_officer" do
    get :show, id: @commission_officer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commission_officer
    assert_response :success
  end

  test "should update commission_officer" do
    put :update, id: @commission_officer, commission_officer: @commission_officer.attributes
    assert_redirected_to commission_officer_path(assigns(:commission_officer))
  end

  test "should destroy commission_officer" do
    assert_difference('CommissionOfficer.count', -1) do
      delete :destroy, id: @commission_officer
    end

    assert_redirected_to commission_officers_path
  end
end
