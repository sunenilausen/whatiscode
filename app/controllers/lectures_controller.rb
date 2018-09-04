class LecturesController < ApplicationController
  load_and_authorize_resource only: [:new, :create, :update, :destroy]
  before_action :set_lecture, only: [:edit, :update, :destroy]
  before_action :set_lecture_by_key, only: [:show, :slides, :print]
  before_action :set_renderer, only: [:show, :print]
  layout 'menuless', only: [:slides]

  # GET /lectures/1
  def show
  end

  # GET /lectures/new
  def new
    @lecture = Lecture.new
  end

  # GET /lectures/1/edit
  def edit
  end

  # POST /lectures
  def create
    @lecture = Lecture.new(lecture_params)

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'Lecture was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /lectures/1
  def update
    respond_to do |format|
      if @lecture.update(lecture_params)
        format.html { redirect_to @lecture, notice: 'Lecture was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /lectures/1
  def destroy
    @lecture.destroy
    respond_to do |format|
      format.html { redirect_to lectures_url, notice: 'Lecture was successfully destroyed.' }
    end
  end

  def slides
  end

  def print
  end

  private
    def set_renderer
      render_options = {hard_wrap: true, link_attributes: {rel: 'nofollow'}}
      engine_options = {fenced_code_blocks: true, autolink: true}
      renderer = RougeHTML.new render_options
      @markdown = Redcarpet::Markdown.new renderer, engine_options
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end

    def set_lecture_by_key
      if params[:workshop]
        workshop = Workshop.find_by(key: params[:workshop])
        @lecture = Lecture.find_by(number: params[:lecture], workshop_id: workshop.id)
      else
        set_lecture
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecture_params
      params.require(:lecture).permit(:active, :number, :title, :body, :workshop_id, :preview, :preview_image_url, article_insertions_attributes: [:number, :article_id, :_destroy, :id])
    end
end
