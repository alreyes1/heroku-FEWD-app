require 'test_helper'

class GlucoseChecksControllerTest < ActionController::TestCase
  setup do
    @glucose_check = glucose_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glucose_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glucose_check" do
    assert_difference('GlucoseCheck.count') do
      post :create, glucose_check: { glucose: @glucose_check.glucose }
    end

    assert_redirected_to glucose_check_path(assigns(:glucose_check))
  end

  test "should show glucose_check" do
    get :show, id: @glucose_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glucose_check
    assert_response :success
  end

  test "should update glucose_check" do
    patch :update, id: @glucose_check, glucose_check: { glucose: @glucose_check.glucose }
    assert_redirected_to glucose_check_path(assigns(:glucose_check))
  end

  test "should destroy glucose_check" do
    assert_difference('GlucoseCheck.count', -1) do
      delete :destroy, id: @glucose_check
    end

    assert_redirected_to glucose_checks_path
  end
end
