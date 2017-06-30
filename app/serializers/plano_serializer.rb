class PlanoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :n_adverts, :n_auto_consultations, :value
end
