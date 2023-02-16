class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :mcq_score, :kataa_response, :kataa_score, :pro_response, :pro_score, :tutor_feedback, :total
  has_one :student
  has_one :tutor
  has_one :assessment
end
