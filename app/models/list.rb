class List < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true

  def delete(current_list)
    current_list.deleted = true
  end

  def complete(current_list)
    current_list.completed = true
  end
  
  def completed?(current_list)
    i = 0
    current_lists.tasks.each do |task|
      i += 1 if task.completed?
      complete(current_list) if i == current_lists.tasks.length
    end
  end
  
end


