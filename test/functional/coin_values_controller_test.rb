require 'test_helper'

class CoinValuesControllerTest < ActionController::TestCase
  setup do
    @coin_value = coin_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coin_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coin_value" do
    assert_difference('CoinValue.count') do
      post :create, :coin_value => { :description => @coin_value.description, :name => @coin_value.name, :value => @coin_value.value }
    end

    assert_redirected_to coin_value_path(assigns(:coin_value))
  end

  test "should show coin_value" do
    get :show, :id => @coin_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coin_value
    assert_response :success
  end

  test "should update coin_value" do
    put :update, :id => @coin_value, :coin_value => { :description => @coin_value.description, :name => @coin_value.name, :value => @coin_value.value }
    assert_redirected_to coin_value_path(assigns(:coin_value))
  end

  test "should destroy coin_value" do
    assert_difference('CoinValue.count', -1) do
      delete :destroy, :id => @coin_value
    end

    assert_redirected_to coin_values_path
  end
end
