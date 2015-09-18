require 'test_helper'

class Admin::GovernoratesControllerTest < ActionController::TestCase
  setup do
    @admin_governorate = admin_governorates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_governorates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_governorate" do
    assert_difference('Admin::Governorate.count') do
      post :create, admin_governorate: {  }
    end

    assert_redirected_to admin_governorate_path(assigns(:admin_governorate))
  end

  test "should show admin_governorate" do
    get :show, id: @admin_governorate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_governorate
    assert_response :success
  end

  test "should update admin_governorate" do
    patch :update, id: @admin_governorate, admin_governorate: {  }
    assert_redirected_to admin_governorate_path(assigns(:admin_governorate))
  end

  test "should destroy admin_governorate" do
    assert_difference('Admin::Governorate.count', -1) do
      delete :destroy, id: @admin_governorate
    end

    assert_redirected_to admin_governorates_path
  end
end
