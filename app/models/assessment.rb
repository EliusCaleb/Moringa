class Assessment < ApplicationRecord
  belongs_to :tutor

  has_many :mcqs, dependent: :destroy
end
