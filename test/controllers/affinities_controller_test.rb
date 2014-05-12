require 'test_helper'

class AffinitiesControllerTest < ActionController::TestCase
  setup do
    @affinity = affinities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affinities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affinity" do
    assert_difference('Affinity.count') do
      post :create, affinity: { name: @affinity.name, notes: @affinity.notes }
    end

    assert_redirected_to affinity_path(assigns(:affinity))
  end

  test "should show affinity" do
    get :show, id: @affinity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @affinity
    assert_response :success
  end

  test "should update affinity" do
    patch :update, id: @affinity, affinity: { name: @affinity.name, notes: @affinity.notes }
    assert_redirected_to affinity_path(assigns(:affinity))
  end

  test "should destroy affinity" do
    assert_difference('Affinity.count', -1) do
      delete :destroy, id: @affinity
    end

    assert_redirected_to affinities_path
  end
end
