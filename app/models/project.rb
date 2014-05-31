class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_many :members, :through => :tasks, :source => :user
end
