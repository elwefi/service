require 'test_helper'

class Admin::DelegationsControllerTest < ActionController::TestCase
  setup do
    @admin_delegation = admin_delegations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_delegations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_delegation" do
    assert_difference('Admin::Delegation.count') do
      post :create, admin_delegation: {  }
    end

    assert_redirected_to admin_delegation_path(assigns(:admin_delegation))
  end

  test "should show admin_delegation" do
    get :show, id: @admin_delegation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_delegation
    assert_response :success
  end

  test "should update admin_delegation" do
    patch :update, id: @admin_delegation, admin_delegation: {  }
    assert_redirected_to admin_delegation_path(assigns(:admin_delegation))
  end

  test "should destroy admin_delegation" do
    assert_difference('Admin::Delegation.count', -1) do
      delete :destroy, id: @admin_delegation
    end

    assert_redirected_to admin_delegations_path
  end
end
