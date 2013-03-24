require 'test_helper'

class CoinsControllerTest < ActionController::TestCase
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coin" do
    assert_difference('Coin.count') do
      post :create, :coin => { :description => @coin.description, :end_year => @coin.end_year, :name => @coin.name, :start_year => @coin.start_year }
    end

    assert_redirected_to coin_path(assigns(:coin))
  end

  test "should show coin" do
    get :show, :id => @coin
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coin
    assert_response :success
  end

  test "should update coin" do
    put :update, :id => @coin, :coin => { :description => @coin.description, :end_year => @coin.end_year, :name => @coin.name, :start_year => @coin.start_year }
    assert_redirected_to coin_path(assigns(:coin))
  end

  test "should destroy coin" do
    assert_difference('Coin.count', -1) do
      delete :destroy, :id => @coin
    end

    assert_redirected_to coins_path
  end
end
