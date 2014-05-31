class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.title = params[:title]
    @project.description = params[:description]
    @project.deadline = params[:deadline]
    @project.user_id = params[:user_id]

    if @project.save
      redirect_to :back, :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    @project.title = params[:title]
    @project.description = params[:description]
    @project.deadline = params[:deadline]
    @project.user_id = params[:user_id]

    if @project.save
      redirect_to :back, :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to :back, :notice => "Project deleted."
  end
end
