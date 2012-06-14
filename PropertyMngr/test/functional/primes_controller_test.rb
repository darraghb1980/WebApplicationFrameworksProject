require 'test_helper'

class PrimesControllerTest < ActionController::TestCase
  setup do
    @prime = primes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:primes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prime" do
    assert_difference('Prime.count') do
      post :create, :prime => @prime.attributes
    end

    assert_redirected_to prime_path(assigns(:prime))
  end

  test "should show prime" do
    get :show, :id => @prime.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prime.to_param
    assert_response :success
  end

  test "should update prime" do
    put :update, :id => @prime.to_param, :prime => @prime.attributes
    assert_redirected_to prime_path(assigns(:prime))
  end

  test "should destroy prime" do
    assert_difference('Prime.count', -1) do
      delete :destroy, :id => @prime.to_param
    end

    assert_redirected_to primes_path
  end
end
