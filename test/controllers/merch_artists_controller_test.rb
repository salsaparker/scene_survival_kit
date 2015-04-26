require 'test_helper'

class MerchArtistsControllerTest < ActionController::TestCase
  setup do
    @merch_artist = merch_artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merch_artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merch_artist" do
    assert_difference('MerchArtist.count') do
      post :create, merch_artist: {  }
    end

    assert_redirected_to merch_artist_path(assigns(:merch_artist))
  end

  test "should show merch_artist" do
    get :show, id: @merch_artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merch_artist
    assert_response :success
  end

  test "should update merch_artist" do
    patch :update, id: @merch_artist, merch_artist: {  }
    assert_redirected_to merch_artist_path(assigns(:merch_artist))
  end

  test "should destroy merch_artist" do
    assert_difference('MerchArtist.count', -1) do
      delete :destroy, id: @merch_artist
    end

    assert_redirected_to merch_artists_path
  end
end
