class PagesController < ApplicationController
  def home
    @articles = Article.all.order("created_at DESC").paginate(page: params[:page], per_page: 3)
    @projects = Project.all.order("created_at DESC").paginate(page: params[:page], per_page: 3)
  end
end
