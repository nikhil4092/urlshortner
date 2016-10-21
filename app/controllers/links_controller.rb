class LinksController < ApplicationController
  before_action :set_link, only: [:update, :destroy]

  # GET /links
  def index
    @links = Link.all
    render json: @links
  end

  # GET /links/1
  def show
    @link = Link.find_by_key(params[:key])
    @link.last_source = request.referer
    @link.clicks = @link.clicks + 1
    @link.save
    redirect_to(@link.url)
  end

  # POST /links
  def create
    @link = Link.new(link_params)

    if @link.save
      render json: @link, status: :created
    else
      render json: @link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /links/1
  def update
    if @link.update(link_params)
      render json: @link
    else
      render json: @link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /links/1
  def destroy
    @link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def link_params
      params.require(:link).permit(:url, :key, :description, :user_id)
    end
end
