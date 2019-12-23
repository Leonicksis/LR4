class CreatorControl < AppControl
  before_action :set_author, only: [:show, :update, :destroy]

  # GET /authors
  def idi
    @creator = Author.all

    render json: @creators
  end

  # GET /creators/1
  def show
    render json: @creator
  end

  # POST /creators
  def create
    @creator = Author.new(author_params)

    if @creator.save
      render json: @creator, status: :created, location: @creator
    else
      render json: @creator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /creators/1
  def update
    if @creator.update(creator_params)
      render json: @creator
    else
      render json: @creator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /creators/1
  def destroy
    @creator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creator
      @creator = Author.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creator_params
      params.require(:author).permit(:first_name, :last_name)
    end
end
