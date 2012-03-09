module ListsHelper
  def task_completed_button_text state
    state ? "Not done" : "Done"
  end
  
  def task_completed_button_style state
    state ? "btn btn-warning" : "btn btn-success"
  end
  
end
