class Answer < ApplicationRecord
  belongs_to :question
  validates :author, :body, presence: true
end
