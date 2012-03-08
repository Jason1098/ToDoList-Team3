class Task < ActiveRecord::Base
  attr_accessible :name, :due_date, :completed, :priority
  
  belongs_to :list
  
  # validates :name, :completed, :priority, presence: :true
  
  before_save :default_priority, :set_incomplete
  
  def default_priority
    self.priority = 1 unless self.priority
  end
  
  def set_incomplete
    self.completed = 0
  end
  
end


# create_table "tasks", :force => true do |t|
#   t.integer  "list_id"
#   t.string   "name"
#   t.date     "due_date"
#   t.boolean  "completed"
#   t.integer  "priority"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end