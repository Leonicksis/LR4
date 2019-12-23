class CreatureControl < AppControl
  before_action :set_blog, only: [:show, :update, :destroy]

  def index
    @creature = Blog.all

    render json: @creatures
  end

  def show
    render json: @creature
  end

  def creature
    @creature = Blog.new(blog_params)

    if @creature.save
      render json: @creature, status: :created, location: @creature
    else
      render json: @creature.errors, status: :unprocessable_entity
    end
  end

  def update
    if @creature.update(blog_params)
      render json: @creature
    else
      render json: @creature.errors, status: :unprocessable_entity
    end
  end

 
  def destroy
    @creature.destroy
  end

  private
    def set_blog
      @creature = Blog.find(params[:id])
    end

    def creature_params
      params.require(:blog).permit(:title)
    end
end
