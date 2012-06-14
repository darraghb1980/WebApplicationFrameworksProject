require 'test_helper'

class OwnerSessionsControllerTest < ActionController::TestCase
  setup do
    @owner_session = owner_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owner_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owner_session" do
    assert_difference('OwnerSession.count') do
      post :create, :owner_session => @owner_session.attributes
    end

    assert_redirected_to owner_session_path(assigns(:owner_session))
  end

  test "should show owner_session" do
    get :show, :id => @owner_session.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @owner_session.to_param
    assert_response :success
  end

  test "should update owner_session" do
    put :update, :id => @owner_session.to_param, :owner_session => @owner_session.attributes
    assert_redirected_to owner_session_path(assigns(:owner_session))
  end

  test "should destroy owner_session" do
    assert_difference('OwnerSession.count', -1) do
      delete :destroy, :id => @owner_session.to_param
    end

    assert_redirected_to owner_sessions_path
  end
end
