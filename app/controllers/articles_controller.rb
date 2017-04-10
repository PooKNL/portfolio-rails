class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
     @articles = Article.all.paginate(:page => params[:page], :per_page => 6).order("created_at desc")
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: "Article succesfully deleted."
  end

  def new
    @article = Article.new
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Article updated!"
    else
      render :edit, notice: "Something went wrong. Article not updated."
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: "Article saved!"
    else
      render :new, notice: "Something went wrong. Article was not saved."
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
