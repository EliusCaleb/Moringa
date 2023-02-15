class StudentSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :username, :password_digest
end
