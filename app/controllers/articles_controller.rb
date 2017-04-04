class ArticlesController < ApplicationController
  def index
    @articles = Article.all.paginate(page: params[:page], per_page: 6)
  end

  def show
  end
end
