class ClaimReviewsController < ApplicationController
  before_action :set_claim_review, only: [:show, :edit, :update, :destroy]

  # GET /claim_reviews
  # GET /claim_reviews.json
  def index
    @claim_reviews = ClaimReview.all
  end

  # GET /claim_reviews/1
  # GET /claim_reviews/1.json
  def show
    # @claim_review = {
    #   "@context": "http://schema.org",
    #   "@type": "ClaimReview",
    #   "datePublished": @claim_review.datePublished,
    #   "url": @claim_review.url,
    #   "itemReviewed":
    #   {
    #     "@type": @claim_review.item_reviewed.ir_type,
    #     "author":
    #     {
    #       "@type": @claim_review.item_reviewed.author.author_type,
    #       "name": @claim_review.item_reviewed.author.name,
    #       "sameAs": @claim_review.item_reviewed.url
    #     },
    #     "datePublished": @claim_review.item_reviewed.datepublished
    #   },
    #   "claimReviewed": @claim_review.claimReviewed,
    #   "author":
    #   {
    #     "@type": @claim_review.author.author_type,
    #     "name": @claim_review.author.name
    #   },
    #   "reviewRating":
    #   {
    #     "@type": @claim_review.review_rating.rr_type,
    #     "ratingValue": @claim_review.review_rating.ratingValue,
    #     "bestRating": @claim_review.review_rating.bestRating,
    #     "worstRating": @claim_review.review_rating.worstRating,
    #     "alternateName": @claim_review.review_rating.alternateName
    #   }
    # }
  end

  # GET /claim_reviews/new
  def new
    @claim_review = ClaimReview.new
  end

  # GET /claim_reviews/1/edit
  def edit
  end

  # POST /claim_reviews
  # POST /claim_reviews.json
  def create
    @claim_review = ClaimReview.new(claim_review_params)

    respond_to do |format|
      if @claim_review.save
        format.html { redirect_to @claim_review, notice: 'Claim review was successfully created.' }
        format.json { render :show, status: :created, location: @claim_review }
      else
        format.html { render :new }
        format.json { render json: @claim_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claim_reviews/1
  # PATCH/PUT /claim_reviews/1.json
  def update
    respond_to do |format|
      if @claim_review.update(claim_review_params)
        format.html { redirect_to @claim_review, notice: 'Claim review was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim_review }
      else
        format.html { render :edit }
        format.json { render json: @claim_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claim_reviews/1
  # DELETE /claim_reviews/1.json
  def destroy
    @claim_review.destroy
    respond_to do |format|
      format.html { redirect_to claim_reviews_url, notice: 'Claim review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim_review
      @claim_review = ClaimReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claim_review_params
      params.require(:claim_review).permit(:datePublished, :url, :item_reviewed_id, :claimReviewed, :author_id, :review_rating_id)
    end
end
