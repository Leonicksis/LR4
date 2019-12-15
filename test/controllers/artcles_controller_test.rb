require 'test_helper'

class ArtclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artcle = artcles(:one)
  end

  test "should get index" do
    get artcles_url, as: :json
    assert_response :success
  end

  test "should create artcle" do
    assert_difference('Artcle.count') do
      post artcles_url, params: { artcle: { author_id: @artcle.author_id, blog_id: @artcle.blog_id, description: @artcle.description, title: @artcle.title, url: @artcle.url } }, as: :json
    end

    assert_response 201
  end

  test "should show artcle" do
    get artcle_url(@artcle), as: :json
    assert_response :success
  end

  test "should update artcle" do
    patch artcle_url(@artcle), params: { artcle: { author_id: @artcle.author_id, blog_id: @artcle.blog_id, description: @artcle.description, title: @artcle.title, url: @artcle.url } }, as: :json
    assert_response 200
  end

  test "should destroy artcle" do
    assert_difference('Artcle.count', -1) do
      delete artcle_url(@artcle), as: :json
    end

    assert_response 204
  end
end
