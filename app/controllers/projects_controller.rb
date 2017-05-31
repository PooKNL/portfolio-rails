class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @projects = Project.all.order("created_at DESC").paginate(page: params[:page], per_page: 3)
  end

  def show
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project succesfully deleted."
  end

  def new
    @project = Project.new
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project updated!"
    else
      render :edit, notice: "Something went wrong. Project not updated."
    end
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project saved!"
    else
      render :new, notice: "Something went wrong. Project was not saved."
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
