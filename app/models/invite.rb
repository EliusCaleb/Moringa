class Invite < ApplicationRecord
  belongs_to :student
  belongs_to :tutor
  belongs_to :assessment
  attribute :status, default: false
end
