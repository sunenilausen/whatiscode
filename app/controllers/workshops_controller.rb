class WorkshopsController < ApplicationController
  load_and_authorize_resource
  skip_authorize_resource only: [:show, :index]
  before_action :set_workshop, only: [:edit, :update, :destroy]
  before_action :set_renderer, only: [:show]
  layout 'shrinkable', only: [:index, :show]

  # GET /workshops
  def index
    @workshops = Workshop.accessible_by(current_ability)
  end

  # GET /workshops/1
  def show
    if params[:workshop]
      @workshop = Workshop.find_by(key: params[:workshop])
    else
      @workshop = Workshop.find(params[:id])
    end
    unless @workshop
      flash[:warning] = params[:workshop] + " does not exist"
      redirect_to root_path
    end
  end

  # GET /workshops/new
  def new
    @workshop = Workshop.new
  end

  # GET /workshops/1/edit
  def edit
  end

  # POST /workshops
  def create
    @workshop = Workshop.new(workshop_params)

    respond_to do |format|
      if @workshop.save
        format.html { redirect_to @workshop, notice: 'Workshop was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /workshops/1
  def update
    respond_to do |format|
      if @workshop.update(workshop_params)
        format.html { redirect_to @workshop, notice: 'Workshop was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /workshops/1
  def destroy
    @workshop.destroy
    respond_to do |format|
      format.html { redirect_to workshops_url, notice: 'Workshop was successfully destroyed.' }
    end
  end

  private
    def set_renderer
      render_options = {hard_wrap: true, link_attributes: {rel: 'nofollow'}}
      engine_options = {fenced_code_blocks: true, autolink: true}
      renderer = RougeHTML.new render_options
      @markdown = Redcarpet::Markdown.new renderer, engine_options
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_params
      params.require(:workshop).permit(:key, :description, :title, :image_url, :active)
    end
end
