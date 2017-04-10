class Contact::ShowSerializer < ActiveModel::Serializer
  attributes :id, :email, :subject, :message, :phone
end
