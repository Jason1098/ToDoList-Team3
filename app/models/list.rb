class List < ActiveRecord::Base
  has_many :tasks
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true
end
