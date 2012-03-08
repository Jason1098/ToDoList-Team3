class ListsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
  end
  
  def index
    @list = List.new
  end

  
  def create
    @list = current_user.lists.build(params[:list])
    if @list.save
      flash[:success] = "New To Do List created!"
      redirect_to root_path
    else
      flash.now[:error] = "Woops! Something went wrong.. :("
      render :index
    end
  end

end
