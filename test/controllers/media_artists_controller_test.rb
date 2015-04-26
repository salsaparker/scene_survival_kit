require 'test_helper'

class MediaArtistsControllerTest < ActionController::TestCase
  setup do
    @media_artist = media_artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_artist" do
    assert_difference('MediaArtist.count') do
      post :create, media_artist: {  }
    end

    assert_redirected_to media_artist_path(assigns(:media_artist))
  end

  test "should show media_artist" do
    get :show, id: @media_artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_artist
    assert_response :success
  end

  test "should update media_artist" do
    patch :update, id: @media_artist, media_artist: {  }
    assert_redirected_to media_artist_path(assigns(:media_artist))
  end

  test "should destroy media_artist" do
    assert_difference('MediaArtist.count', -1) do
      delete :destroy, id: @media_artist
    end

    assert_redirected_to media_artists_path
  end
end
