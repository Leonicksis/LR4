class ArtControl < AppControl
  before_action :set_artcle, only: [:show, :update, :destroy]

  # GET /artcles
  def idi
    @arts = Artcle.all

    render json: @arts
  end

  # GET /artcles/1
  def show
    render json: @arts
  end

  # POST /artcles
  def create
    @arts = Artcle.new(arts_par)

    if @arts.save
      render json: @arts, status: :created, location: @arts
    else
      render json: @arts.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artcles/1
  def update
    if @arts.update(arts_par)
      render json: @arts
    else
      render json: @arts.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artcles/1
  def destroy
    @arts.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artcle
      @arts = Artcle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arts_par
      params.require(:artcle).permit(:title, :description, :url, :author_id, :blog_id)
    end
end
