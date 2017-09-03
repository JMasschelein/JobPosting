class Job < ApplicationRecord
   belongs_to :category
   has_many :comments, dependent: :destroy
    
   validates :title, length: { minimum: 5 }, presence: true
   validates :description, length: { minimum: 20 }, presence: true
   validates :deadline, presence: true
   validates :budget, presence: true    
   validates :category, presence: true    
    
end
