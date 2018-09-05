class ShowcasesController < ApplicationController
  before_action :set_showcase, only: [:show, :edit, :update, :destroy]

  # GET /showcases
  def index
    @showcases = Showcase.accessible_by(current_ability).order(:released_at)
  end

  # GET /showcases/1
  def show
    set_renderer
  end

  # GET /showcases/new
  def new
    @showcase = Showcase.new
  end

  # GET /showcases/1/edit
  def edit
  end

  # POST /showcases
  def create
    @showcase = Showcase.new(showcase_params)

    respond_to do |format|
      if @showcase.save
        format.html { redirect_to @showcase, notice: 'Showcase was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /showcases/1
  def update
    respond_to do |format|
      if @showcase.update(showcase_params)
        format.html { redirect_to @showcase, notice: 'Showcase was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /showcases/1
  def destroy
    @showcase.destroy
    respond_to do |format|
      format.html { redirect_to showcases_url, notice: 'Showcase was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showcase
      @showcase = Showcase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showcase_params
      params.require(:showcase).permit(:title, :description, :released_at, :image_url, :active)
    end
end
