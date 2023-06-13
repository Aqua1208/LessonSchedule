class Participant < ApplicationRecord
  belongs_to :user
    validates :lesson, :uniqueness => {:scope => :user}
  belongs_to :lesson
end
