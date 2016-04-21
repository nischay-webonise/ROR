require 'test_helper'

class AppdataControllerTest < ActionController::TestCase
  setup do
    @appdatum = appdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appdatum" do
    assert_difference('Appdatum.count') do
      post :create, appdatum: {  }
    end

    assert_redirected_to appdatum_path(assigns(:appdatum))
  end

  test "should show appdatum" do
    get :show, id: @appdatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appdatum
    assert_response :success
  end

  test "should update appdatum" do
    patch :update, id: @appdatum, appdatum: {  }
    assert_redirected_to appdatum_path(assigns(:appdatum))
  end

  test "should destroy appdatum" do
    assert_difference('Appdatum.count', -1) do
      delete :destroy, id: @appdatum
    end

    assert_redirected_to appdata_path
  end
end
