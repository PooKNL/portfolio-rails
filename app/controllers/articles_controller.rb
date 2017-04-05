class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy, :update]

  def index
    @articles = Article.all.paginate(:page => params[:page], :per_page => 2)
  end

  def show
  end

  def new
    @article = Article.new
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
end
