class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.completer_id = params[:completer_id]
    @task.is_completed = params[:is_completed]
    @task.is_claimed = params[:is_claimed]
    @task.deadline = params[:deadline]
    @task.description = params[:description]
    @task.title = params[:title]
    @task.project_id = params[:project_id]

    if @task.save
      redirect_to "/projects/#{@task.project_id}", :notice => "Task created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    @task.completer_id = params[:completer_id]
    @task.is_completed = params[:is_completed]
    @task.is_claimed = params[:is_claimed]
    @task.deadline = params[:deadline]
    @task.description = params[:description]
    @task.title = params[:title]
    @task.project_id = params[:project_id]

    if @task.save
      redirect_to "/tasks", :notice => "Task updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to "/tasks", :notice => "Task deleted."
  end
end
