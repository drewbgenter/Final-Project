class ProjectsController < ApplicationController
  before_action(:set_project, :only => [:show, :edit, :destroy, :update])

  before_action(:signed_in_user_must_be_owner, :only => [:edit, :destroy, :update])


  def signed_in_user_must_be_owner
    if @project.user_id != current_user.id
      redirect_to root_url, :notice => "Beat It Kid"
    end
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  def show

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
      redirect_to "/projects", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit

  end

  def update


    @project.title = params[:title]
    @project.description = params[:description]
    @project.deadline = params[:deadline]
    @project.user_id = params[:user_id]

    if @project.save
      redirect_to "/projects", :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy


    @project.destroy

    redirect_to "/projects", :notice => "Project deleted."
  end
end
