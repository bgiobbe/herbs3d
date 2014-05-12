require 'test_helper'

class FoundationalActionsControllerTest < ActionController::TestCase
  setup do
    @foundational_action = foundational_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foundational_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foundational_action" do
    assert_difference('FoundationalAction.count') do
      post :create, foundational_action: { name: @foundational_action.name, notes: @foundational_action.notes }
    end

    assert_redirected_to foundational_action_path(assigns(:foundational_action))
  end

  test "should show foundational_action" do
    get :show, id: @foundational_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foundational_action
    assert_response :success
  end

  test "should update foundational_action" do
    patch :update, id: @foundational_action, foundational_action: { name: @foundational_action.name, notes: @foundational_action.notes }
    assert_redirected_to foundational_action_path(assigns(:foundational_action))
  end

  test "should destroy foundational_action" do
    assert_difference('FoundationalAction.count', -1) do
      delete :destroy, id: @foundational_action
    end

    assert_redirected_to foundational_actions_path
  end
end
