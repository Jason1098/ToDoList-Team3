class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])

    #@task = @list.tasks.build(params[:task])

    @task = Task.new(params[:task])
    @task.list_id = @list.id
    # @task.list = @list

    if @task.save
      flash[:notice] = "New ToDo created!"
      redirect_to list_path(@list)
    else
      flash.now[:error] = "Woops! Something went wrong.. :("
      render 'lists/show'
    end
  end

  def edit
  end

  def destroy
    @list = List.find(params[:list_id])
    Task.find(params[:id]).destroy
    flash[:success] = "Short URL Successfully Deleted!"
    redirect_to list_path(@list)
  end
end
