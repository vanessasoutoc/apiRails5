class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :plano_id, :admin
end
