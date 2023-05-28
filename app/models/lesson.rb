class Lesson < ApplicationRecord
  # has_many :users, through: :participants
  has_many :participants, foreign_key: 'lesson_id'
  has_many :users, :through => :participants

  accepts_nested_attributes_for :participants
end
