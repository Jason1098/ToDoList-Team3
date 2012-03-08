class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(params[:task])
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
  end
end
