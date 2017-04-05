class ArticlesController < ApplicationController
  def index
    @articles = Article.all.paginate(:page => params[:page], :per_page => 2)
  end

  def show
  end
end
