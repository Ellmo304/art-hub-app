require 'test_helper'

class ExhibitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exhibition = exhibitions(:one)
  end

  test "should get index" do
    get exhibitions_url, as: :json
    assert_response :success
  end

  test "should create exhibition" do
    assert_difference('Exhibition.count') do
      post exhibitions_url, params: { exhibition: { artist: @exhibition.artist, body: @exhibition.body, closing_date: @exhibition.closing_date, gallery_id: @exhibition.gallery_id, image: @exhibition.image, name: @exhibition.name, opening_date: @exhibition.opening_date } }, as: :json
    end

    assert_response 201
  end

  test "should show exhibition" do
    get exhibition_url(@exhibition), as: :json
    assert_response :success
  end

  test "should update exhibition" do
    patch exhibition_url(@exhibition), params: { exhibition: { artist: @exhibition.artist, body: @exhibition.body, closing_date: @exhibition.closing_date, gallery_id: @exhibition.gallery_id, image: @exhibition.image, name: @exhibition.name, opening_date: @exhibition.opening_date } }, as: :json
    assert_response 200
  end

  test "should destroy exhibition" do
    assert_difference('Exhibition.count', -1) do
      delete exhibition_url(@exhibition), as: :json
    end

    assert_response 204
  end
end
