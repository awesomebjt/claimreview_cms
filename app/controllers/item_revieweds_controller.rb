class ItemReviewedsController < ApplicationController
  before_action :set_item_reviewed, only: [:show, :edit, :update, :destroy]

  # GET /item_revieweds
  # GET /item_revieweds.json
  def index
    @item_revieweds = ItemReviewed.all
  end

  # GET /item_revieweds/1
  # GET /item_revieweds/1.json
  def show
  end

  # GET /item_revieweds/new
  def new
    @item_reviewed = ItemReviewed.new
  end

  # GET /item_revieweds/1/edit
  def edit
  end

  # POST /item_revieweds
  # POST /item_revieweds.json
  def create
    @item_reviewed = ItemReviewed.new(item_reviewed_params)

    respond_to do |format|
      if @item_reviewed.save
        format.html { redirect_to @item_reviewed, notice: 'Item reviewed was successfully created.' }
        format.json { render :show, status: :created, location: @item_reviewed }
      else
        format.html { render :new }
        format.json { render json: @item_reviewed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_revieweds/1
  # PATCH/PUT /item_revieweds/1.json
  def update
    respond_to do |format|
      if @item_reviewed.update(item_reviewed_params)
        format.html { redirect_to @item_reviewed, notice: 'Item reviewed was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_reviewed }
      else
        format.html { render :edit }
        format.json { render json: @item_reviewed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_revieweds/1
  # DELETE /item_revieweds/1.json
  def destroy
    @item_reviewed.destroy
    respond_to do |format|
      format.html { redirect_to item_revieweds_url, notice: 'Item reviewed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_reviewed
      @item_reviewed = ItemReviewed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_reviewed_params
      params.require(:item_reviewed).permit(:ir_type, :author_id, :url, :datepublished)
    end
end
