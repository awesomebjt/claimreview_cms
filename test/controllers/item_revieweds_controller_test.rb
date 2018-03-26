require 'test_helper'

class ItemReviewedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_reviewed = item_revieweds(:one)
  end

  test "should get index" do
    get item_revieweds_url
    assert_response :success
  end

  test "should get new" do
    get new_item_reviewed_url
    assert_response :success
  end

  test "should create item_reviewed" do
    assert_difference('ItemReviewed.count') do
      post item_revieweds_url, params: { item_reviewed: { author_id: @item_reviewed.author_id, datepublished: @item_reviewed.datepublished, type: @item_reviewed.type } }
    end

    assert_redirected_to item_reviewed_url(ItemReviewed.last)
  end

  test "should show item_reviewed" do
    get item_reviewed_url(@item_reviewed)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_reviewed_url(@item_reviewed)
    assert_response :success
  end

  test "should update item_reviewed" do
    patch item_reviewed_url(@item_reviewed), params: { item_reviewed: { author_id: @item_reviewed.author_id, datepublished: @item_reviewed.datepublished, type: @item_reviewed.type } }
    assert_redirected_to item_reviewed_url(@item_reviewed)
  end

  test "should destroy item_reviewed" do
    assert_difference('ItemReviewed.count', -1) do
      delete item_reviewed_url(@item_reviewed)
    end

    assert_redirected_to item_revieweds_url
  end
end
