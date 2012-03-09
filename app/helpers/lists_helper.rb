module ListsHelper
  def task_completed_button_text state
    state ? "Done" : "Not done"
  end
  
  def task_completed_button_style state
    state ? "btn btn-success" : "btn btn-warning"
  end
  
end
