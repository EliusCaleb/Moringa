class TutorSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :work_id, :password_digest
end
