class ArtclesController < ApplicationController
  before_action :set_artcle, only: [:show, :update, :destroy]

  # GET /artcles
  def index
    @artcles = Artcle.all

    render json: @artcles
  end

  # GET /artcles/1
  def show
    render json: @artcle
  end

  # POST /artcles
  def create
    @artcle = Artcle.new(artcle_params)

    if @artcle.save
      render json: @artcle, status: :created, location: @artcle
    else
      render json: @artcle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artcles/1
  def update
    if @artcle.update(artcle_params)
      render json: @artcle
    else
      render json: @artcle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artcles/1
  def destroy
    @artcle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artcle
      @artcle = Artcle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artcle_params
      params.require(:artcle).permit(:title, :description, :url, :author_id, :blog_id)
    end
end
