require 'test_helper'

class MintsControllerTest < ActionController::TestCase
  setup do
    @mint = mints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mint" do
    assert_difference('Mint.count') do
      post :create, :mint => { :alwaysPresent => @mint.alwaysPresent, :comments => @mint.comments, :name => @mint.name, :symbol => @mint.symbol }
    end

    assert_redirected_to mint_path(assigns(:mint))
  end

  test "should show mint" do
    get :show, :id => @mint
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mint
    assert_response :success
  end

  test "should update mint" do
    put :update, :id => @mint, :mint => { :alwaysPresent => @mint.alwaysPresent, :comments => @mint.comments, :name => @mint.name, :symbol => @mint.symbol }
    assert_redirected_to mint_path(assigns(:mint))
  end

  test "should destroy mint" do
    assert_difference('Mint.count', -1) do
      delete :destroy, :id => @mint
    end

    assert_redirected_to mints_path
  end
end
