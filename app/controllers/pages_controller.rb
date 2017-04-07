class PagesController < ApplicationController
  def index
    @articles = Article.all.paginate(:page => params[:page], :per_page => 6).order("created_at desc")
    @projects = Project.all.paginate(:page => params[:page], :per_page => 6).order("created_at desc")
  end
end