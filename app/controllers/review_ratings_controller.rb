class ReviewRatingsController < ApplicationController
  before_action :set_review_rating, only: [:show, :edit, :update, :destroy]

  # GET /review_ratings
  # GET /review_ratings.json
  def index
    @review_ratings = ReviewRating.all
  end

  # GET /review_ratings/1
  # GET /review_ratings/1.json
  def show
  end

  # GET /review_ratings/new
  def new
    @review_rating = ReviewRating.new
  end

  # GET /review_ratings/1/edit
  def edit
  end

  # POST /review_ratings
  # POST /review_ratings.json
  def create
    @review_rating = ReviewRating.new(review_rating_params)

    respond_to do |format|
      if @review_rating.save
        format.html { redirect_to @review_rating, notice: 'Review rating was successfully created.' }
        format.json { render :show, status: :created, location: @review_rating }
      else
        format.html { render :new }
        format.json { render json: @review_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_ratings/1
  # PATCH/PUT /review_ratings/1.json
  def update
    respond_to do |format|
      if @review_rating.update(review_rating_params)
        format.html { redirect_to @review_rating, notice: 'Review rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_rating }
      else
        format.html { render :edit }
        format.json { render json: @review_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_ratings/1
  # DELETE /review_ratings/1.json
  def destroy
    @review_rating.destroy
    respond_to do |format|
      format.html { redirect_to review_ratings_url, notice: 'Review rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_rating
      @review_rating = ReviewRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_rating_params
      params.require(:review_rating).permit(:rr_type, :ratingValue, :bestRating, :worstRating, :alternateName)
    end
end
