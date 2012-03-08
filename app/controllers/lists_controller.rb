class ListsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
  end
  
  def show
    @list = List.find(params[:id])
    @task = Task.new
    @tasks = Task.all
  end
  
  def index
    @list = List.new
    @list.user = current_user
  end

  
  def create
    @list = List.new(params[:list])
    @list.user = current_user
    if @list.save
      flash[:success] = "New To Do List created!"
      redirect_to root_path
    else
      flash.now[:error] = "Woops! Something went wrong.. :("
      # redirect_to root_path
      render :action => 'index' 
    end
  end

end
