require 'test_helper'

class ClaimReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @claim_review = claim_reviews(:one)
  end

  test "should get index" do
    get claim_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_claim_review_url
    assert_response :success
  end

  test "should create claim_review" do
    assert_difference('ClaimReview.count') do
      post claim_reviews_url, params: { claim_review: { author_id: @claim_review.author_id, claimReviewed: @claim_review.claimReviewed, context: @claim_review.context, datePublished: @claim_review.datePublished, item_reviewed_id: @claim_review.item_reviewed_id, review_rating_id: @claim_review.review_rating_id, type: @claim_review.type, url: @claim_review.url } }
    end

    assert_redirected_to claim_review_url(ClaimReview.last)
  end

  test "should show claim_review" do
    get claim_review_url(@claim_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_claim_review_url(@claim_review)
    assert_response :success
  end

  test "should update claim_review" do
    patch claim_review_url(@claim_review), params: { claim_review: { author_id: @claim_review.author_id, claimReviewed: @claim_review.claimReviewed, context: @claim_review.context, datePublished: @claim_review.datePublished, item_reviewed_id: @claim_review.item_reviewed_id, review_rating_id: @claim_review.review_rating_id, type: @claim_review.type, url: @claim_review.url } }
    assert_redirected_to claim_review_url(@claim_review)
  end

  test "should destroy claim_review" do
    assert_difference('ClaimReview.count', -1) do
      delete claim_review_url(@claim_review)
    end

    assert_redirected_to claim_reviews_url
  end
end
