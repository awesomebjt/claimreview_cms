require 'test_helper'

class ReviewRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review_rating = review_ratings(:one)
  end

  test "should get index" do
    get review_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_review_rating_url
    assert_response :success
  end

  test "should create review_rating" do
    assert_difference('ReviewRating.count') do
      post review_ratings_url, params: { review_rating: { alternateName: @review_rating.alternateName, bestRating: @review_rating.bestRating, ratingValue: @review_rating.ratingValue, type: @review_rating.type, worstRating: @review_rating.worstRating } }
    end

    assert_redirected_to review_rating_url(ReviewRating.last)
  end

  test "should show review_rating" do
    get review_rating_url(@review_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_rating_url(@review_rating)
    assert_response :success
  end

  test "should update review_rating" do
    patch review_rating_url(@review_rating), params: { review_rating: { alternateName: @review_rating.alternateName, bestRating: @review_rating.bestRating, ratingValue: @review_rating.ratingValue, type: @review_rating.type, worstRating: @review_rating.worstRating } }
    assert_redirected_to review_rating_url(@review_rating)
  end

  test "should destroy review_rating" do
    assert_difference('ReviewRating.count', -1) do
      delete review_rating_url(@review_rating)
    end

    assert_redirected_to review_ratings_url
  end
end
