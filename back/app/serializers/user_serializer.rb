class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :pasword_digest
end
