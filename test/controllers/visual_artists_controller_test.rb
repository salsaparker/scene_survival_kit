require 'test_helper'

class VisualArtistsControllerTest < ActionController::TestCase
  setup do
    @visual_artist = visual_artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visual_artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visual_artist" do
    assert_difference('VisualArtist.count') do
      post :create, visual_artist: { email_address: @visual_artist.email_address, first_name: @visual_artist.first_name, last_name: @visual_artist.last_name, phone_number: @visual_artist.phone_number, type: @visual_artist.type }
    end

    assert_redirected_to visual_artist_path(assigns(:visual_artist))
  end

  test "should show visual_artist" do
    get :show, id: @visual_artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visual_artist
    assert_response :success
  end

  test "should update visual_artist" do
    patch :update, id: @visual_artist, visual_artist: { email_address: @visual_artist.email_address, first_name: @visual_artist.first_name, last_name: @visual_artist.last_name, phone_number: @visual_artist.phone_number, type: @visual_artist.type }
    assert_redirected_to visual_artist_path(assigns(:visual_artist))
  end

  test "should destroy visual_artist" do
    assert_difference('VisualArtist.count', -1) do
      delete :destroy, id: @visual_artist
    end

    assert_redirected_to visual_artists_path
  end
end
