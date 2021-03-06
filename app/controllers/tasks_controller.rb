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
    @task.user_id = params[:user_id]
    @task.completer = params[:completer_id]
    @task.claimer = params[:completer_id]
    @task.deadline = params[:deadline]
    @task.description = params[:description]
    @task.title = params[:title]
    @task.project_id = params[:project_id]

    if @task.save
      redirect_to :back, :notice => "Task created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    @task.completer = params[:completer_id]
    @task.claimer = params[:completer_id]
    @task.deadline = params[:deadline]
    @task.description = params[:description]
    @task.title = params[:title]
    @task.project_id = params[:project_id]

    if @task.save
      redirect_to :back, :notice => "Task updated successfully."
    else
      render 'edit'
    end
  end

  def claim
    @task = Task.find(params[:id])

    @task.claimer = params[:claimer]

    if @task.save
      redirect_to :back, :notice => "Task updated."
    else
      render 'edit'
    end
  end

  def complete
    @task = Task.find(params[:id])

    @task.completer = params[:completer]

    if @task.save
      redirect_to :back, :notice => "Task updated."
    else
      render 'edit'
    end
  end


  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    redirect_to :back, :notice => "Task deleted."
  end
end
