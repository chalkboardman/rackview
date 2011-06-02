require 'test_helper'

class LabRacksControllerTest < ActionController::TestCase
  setup do
    @lab_rack = lab_racks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_racks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_rack" do
    assert_difference('LabRack.count') do
      post :create, :lab_rack => @lab_rack.attributes
    end

    assert_redirected_to lab_rack_path(assigns(:lab_rack))
  end

  test "should show lab_rack" do
    get :show, :id => @lab_rack.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lab_rack.to_param
    assert_response :success
  end

  test "should update lab_rack" do
    put :update, :id => @lab_rack.to_param, :lab_rack => @lab_rack.attributes
    assert_redirected_to lab_rack_path(assigns(:lab_rack))
  end

  test "should destroy lab_rack" do
    assert_difference('LabRack.count', -1) do
      delete :destroy, :id => @lab_rack.to_param
    end

    assert_redirected_to lab_racks_path
  end
end
