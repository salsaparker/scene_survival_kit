require 'test_helper'

class BandMatesControllerTest < ActionController::TestCase
  setup do
    @band_mate = band_mates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:band_mates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create band_mate" do
    assert_difference('BandMate.count') do
      post :create, band_mate: {  }
    end

    assert_redirected_to band_mate_path(assigns(:band_mate))
  end

  test "should show band_mate" do
    get :show, id: @band_mate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @band_mate
    assert_response :success
  end

  test "should update band_mate" do
    patch :update, id: @band_mate, band_mate: {  }
    assert_redirected_to band_mate_path(assigns(:band_mate))
  end

  test "should destroy band_mate" do
    assert_difference('BandMate.count', -1) do
      delete :destroy, id: @band_mate
    end

    assert_redirected_to band_mates_path
  end
end
