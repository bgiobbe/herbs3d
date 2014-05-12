require 'test_helper'

class ClinicalActionsControllerTest < ActionController::TestCase
  setup do
    @clinical_action = clinical_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinical_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinical_action" do
    assert_difference('ClinicalAction.count') do
      post :create, clinical_action: { name: @clinical_action.name, notes: @clinical_action.notes }
    end

    assert_redirected_to clinical_action_path(assigns(:clinical_action))
  end

  test "should show clinical_action" do
    get :show, id: @clinical_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinical_action
    assert_response :success
  end

  test "should update clinical_action" do
    patch :update, id: @clinical_action, clinical_action: { name: @clinical_action.name, notes: @clinical_action.notes }
    assert_redirected_to clinical_action_path(assigns(:clinical_action))
  end

  test "should destroy clinical_action" do
    assert_difference('ClinicalAction.count', -1) do
      delete :destroy, id: @clinical_action
    end

    assert_redirected_to clinical_actions_path
  end
end
