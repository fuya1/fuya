class MarketReviewsController < ApplicationController
  before_action :set_market_review, only: [:show, :edit, :update, :destroy]

  # GET /market_reviews
  # GET /market_reviews.json
  def index
    @market_reviews = MarketReview.all
  end

  # GET /market_reviews/1
  # GET /market_reviews/1.json
  def show
  end

  # GET /market_reviews/new
  def new
    @market_review = MarketReview.new(market_id: params[:market_id])
  end

  # GET /market_reviews/1/edit
  def edit
  end

  # POST /market_reviews
  # POST /market_reviews.json
  def create
    @market_review = MarketReview.new(market_review_params)

    respond_to do |format|
      if @market_review.save
        format.html { redirect_to @market_review, notice: 'Market review was successfully created.' }
        format.json { render :show, status: :created, location: @market_review }
      else
        format.html { render :new }
        format.json { render json: @market_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_reviews/1
  # PATCH/PUT /market_reviews/1.json
  def update
    respond_to do |format|
      if @market_review.update(market_review_params)
        format.html { redirect_to @market_review, notice: 'Market review was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_review }
      else
        format.html { render :edit }
        format.json { render json: @market_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_reviews/1
  # DELETE /market_reviews/1.json
  def destroy
    @market_review.destroy
    respond_to do |format|
      format.html { redirect_to market_reviews_url, notice: 'Market review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_review
      @market_review = MarketReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_review_params
      params.require(:market_review).permit(:title, :content, :rate, :date, :user_id, :market_id)
    end
end
