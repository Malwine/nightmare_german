require 'test_helper'

class NightmaresControllerTest < ActionController::TestCase
  setup do
    @nightmare = nightmares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nightmares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nightmare" do
    assert_difference('Nightmare.count') do
      post :create, nightmare: { description: @nightmare.description, expression: @nightmare.expression, name: @nightmare.name }
    end

    assert_redirected_to nightmare_path(assigns(:nightmare))
  end

  test "should show nightmare" do
    get :show, id: @nightmare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nightmare
    assert_response :success
  end

  test "should update nightmare" do
    patch :update, id: @nightmare, nightmare: { description: @nightmare.description, expression: @nightmare.expression, name: @nightmare.name }
    assert_redirected_to nightmare_path(assigns(:nightmare))
  end

  test "should destroy nightmare" do
    assert_difference('Nightmare.count', -1) do
      delete :destroy, id: @nightmare
    end

    assert_redirected_to nightmares_path
  end
end
