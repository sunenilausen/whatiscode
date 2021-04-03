class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy, :slides]
  load_and_authorize_resource only: [:new, :create, :update, :destroy]
  before_action :set_renderer, only: [:show, :index]
  layout 'menuless', only: [:slides]
  layout 'search', only: [:index]

  # GET /articles
  def index
    @q = Article.documentation.accessible_by(current_ability).ransack(params[:q])
    @articles = @q.result(distinct: true).includes(:category)
    @articles = Article.documentation.accessible_by(current_ability) if @articles.empty?
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def slides
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article)
        .permit(:title,
          :key,
          :body,
          :preview,
          :preview_image_url,
          :preview_code,
          :documentation,
          :active,
          :category_id,
          images: [])
    end
end
