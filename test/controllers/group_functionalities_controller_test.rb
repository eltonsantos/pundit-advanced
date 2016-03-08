require 'test_helper'

class GroupFunctionalitiesControllerTest < ActionController::TestCase
  setup do
    @group_functionality = group_functionalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_functionalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_functionality" do
    assert_difference('GroupFunctionality.count') do
      post :create, group_functionality: { functionality_id: @group_functionality.functionality_id, group_id: @group_functionality.group_id }
    end

    assert_redirected_to group_functionality_path(assigns(:group_functionality))
  end

  test "should show group_functionality" do
    get :show, id: @group_functionality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_functionality
    assert_response :success
  end

  test "should update group_functionality" do
    patch :update, id: @group_functionality, group_functionality: { functionality_id: @group_functionality.functionality_id, group_id: @group_functionality.group_id }
    assert_redirected_to group_functionality_path(assigns(:group_functionality))
  end

  test "should destroy group_functionality" do
    assert_difference('GroupFunctionality.count', -1) do
      delete :destroy, id: @group_functionality
    end

    assert_redirected_to group_functionalities_path
  end
end
